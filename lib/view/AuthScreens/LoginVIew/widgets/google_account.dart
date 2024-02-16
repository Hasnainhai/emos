// ignore_for_file: file_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:emos/view/HomeView/HomeView.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../../res/GlobalColors/colors.dart';
import '../../../../utils/utils.dart';

class GoogleAccount extends StatefulWidget {
  const GoogleAccount({
    super.key,
    required this.img,
  });
  final String img;

  @override
  State<GoogleAccount> createState() => _GoogleAccountState();
}

class _GoogleAccountState extends State<GoogleAccount> {
  final FirebaseAuth authInstance = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _authInstance = FirebaseAuth.instance;
  Future<void> googleSignUp(BuildContext context) async {
    try {
      final GoogleSignInAccount? googleSignInAccount =
          await _googleSignIn.signIn();

      if (googleSignInAccount != null) {
        final GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;
        final AuthCredential authCredential = GoogleAuthProvider.credential(
          idToken: googleSignInAuthentication.idToken,
          accessToken: googleSignInAuthentication.accessToken,
        );

        UserCredential result =
            await _authInstance.signInWithCredential(authCredential);

        if (result.user != null) {
          await _setupUserData(result.user!);
          // Show success message and navigate to the dashboard
          _showSuccessMessage(context);
          _navigateToDashboard(context);
        }
      }
    } on FirebaseAuthException catch (e) {
      _handleFirebaseAuthException(e, context);
      print('.........................$e.......................');
    } catch (e) {
      _handleGenericError(e, context);
      print('.........................$e.......................');
    }
  }

  Future<void> _setupUserData(User user) async {
    final uid = user.uid;

    // realtime database
    await FirebaseDatabase.instance.ref().child('users').child(uid).set({
      'createdAt': FieldValue.serverTimestamp(),
      'email': user.email,
      'id': user.uid,
      'name': user.displayName,
      'profilePic': user.photoURL,
    });
    // firestore database
    // await FirebaseFirestore.instance.collection('users').doc(user.uid).set({
    //   'createdAt': FieldValue.serverTimestamp(),
    //   'email': user.email,
    //   'id': user.uid,
    //   'name': user.displayName,
    //   'profilePic': user.photoURL,
    // });
  }

  void _showSuccessMessage(BuildContext context) {
    Utils.toastMessage('SuccessFully SignIn');
  }

  void _navigateToDashboard(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const HomeView()),
    );
  }

  void _handleFirebaseAuthException(
      FirebaseAuthException e, BuildContext context) {
    // Handle FirebaseAuthException,
    _showErrorMessage('${e.message}', context);
  }

  void _handleGenericError(dynamic e, BuildContext context) {
    // Handle generic errors,
    _showErrorMessage(e.toString(), context);
  }

  void _showErrorMessage(String message, BuildContext context) {
    Utils.flushBarErrorMessage(message, context);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        googleSignUp(context);
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
