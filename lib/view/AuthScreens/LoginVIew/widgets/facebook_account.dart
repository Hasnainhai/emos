// ignore_for_file: file_names

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

import '../../../../res/GlobalColors/colors.dart';
import '../../../../utils/utils.dart';
import '../../../HomeView/HomeView.dart';

class FacebookAccount extends StatefulWidget {
  const FacebookAccount({
    super.key,
    required this.img,
  });
  final String img;

  @override
  State<FacebookAccount> createState() => _FacebookAccountState();
}

class _FacebookAccountState extends State<FacebookAccount> {
  final FirebaseAuth _authInstance = FirebaseAuth.instance;

  Future<void> facebookSignUp(BuildContext context) async {
    try {
      // Trigger Facebook sign-in
      final LoginResult loginResult = await FacebookAuth.instance.login();

      // Check if the login was successful
      if (loginResult.status == LoginStatus.success) {
        // Get the access token from the login result
        final AccessToken accessToken = loginResult.accessToken!;

        // Convert Facebook access token to Firebase credential
        final OAuthCredential credential =
            FacebookAuthProvider.credential(accessToken.token);

        // Sign in with the Facebook credential
        final UserCredential result =
            await _authInstance.signInWithCredential(credential);

        if (result.user != null) {
          await _setupUserData(result.user!);
          // Show success message and navigate to the dashboard
          _showSuccessMessage(context);
          _navigateToDashboard(context);
        }
      }
    } on FirebaseAuthException catch (e) {
      _handleFirebaseAuthException(e, context);
      print('FirebaseAuthException: $e');
    } catch (e) {
      _handleGenericError(e, context);
      print('Error: $e');
    }
  }

  Future<void> _setupUserData(User user) async {
    final uid = user.uid;

    // Write user data to Firebase Realtime Database
    await FirebaseDatabase.instance.ref().child('users').child(uid).set({
      'createdAt': ServerValue.timestamp,
      'email': user.email,
      'id': user.uid,
      'name': user.displayName,
      'profilePic': user.photoURL,
    });
  }

  void _showSuccessMessage(BuildContext context) {
    Utils.toastMessage('Successfully Signed In');
  }

  void _navigateToDashboard(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const HomeView()),
    );
  }

  void _handleFirebaseAuthException(
      FirebaseAuthException e, BuildContext context) {
    // Handle FirebaseAuthException
    _showErrorMessage('${e.message}', context);
  }

  void _handleGenericError(dynamic e, BuildContext context) {
    // Handle generic errors
    _showErrorMessage(e.toString(), context);
  }

  void _showErrorMessage(String message, BuildContext context) {
    Utils.flushBarErrorMessage(message, context);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        facebookSignUp(context);
      },
      child: Container(
        height: 48.0,
        width: 98.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(
            width: 1.0,
            color: AppColor.textColor2,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Image.asset(widget.img),
          ),
        ),
      ),
    );
  }
}
