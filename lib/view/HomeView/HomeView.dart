import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../res/GlobalColors/colors.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  final double tHeight = 274.0;
  final double top = 301.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.linearBgTextColor,
        elevation: 0.0,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              _buildCoverBar(),
              Positioned(
                top: 10.0,
                left: 0.0,
                child: _buildProfile(),
              ),
              Positioned(
                top: tHeight - top / 2 - 10,
                child: _builProfileContainer(),
              ),
            ],
          ),
        ],
      ),
    );
  }

  _buildCoverBar() {
    return Container(
      height: tHeight,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xff2AA39C), Color(0xff2AA39C)],
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30.0),
          bottomRight: Radius.circular(30.0),
        ),
      ),
    );
  }

  _buildProfile() {
    return Row(
      children: [
        const SizedBox(width: 30.0),
        Stack(
          children: [
            const CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&q=80&w=1587&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              ),
            ),
            Positioned(
              top: 47.0,
              right: 0,
              child: Container(
                height: 25.0,
                width: 25.0,
                decoration: BoxDecoration(
                  color: AppColor.whiteColor,
                  borderRadius: BorderRadius.circular(68),
                ),
                child: const Center(
                  child: Icon(
                    Icons.camera_alt_outlined,
                    size: 16,
                    color: AppColor.linearBgTextColor,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(width: 20.0),
        Text.rich(
          TextSpan(
            text: 'Hi Hiren, \n',
            style: GoogleFonts.getFont(
              "Poppins",
              textStyle: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w400,
                color: AppColor.whiteColor,
              ),
            ),
            children: const <TextSpan>[
              TextSpan(
                text: 'Welcome back!',
                style: TextStyle(
                  color: AppColor.hometxtColor,
                  fontSize: 14.0,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  _builProfileContainer() {
    return Container(
      height: top,
      width: 350,
      decoration: BoxDecoration(
          color: AppColor.whiteColor,
          borderRadius: BorderRadius.circular(12.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // profileCenterBtns(
          //   ontap: () {
          //     Navigator.pushNamed(context, RoutesName.myOrder);
          //   },
          //   tColor: const Color(0xff6AA9FF),
          //   bColor: const Color(0xff005AD5),
          //   icon: Icons.local_shipping_outlined,
          //   title: 'My All',
          //   subtitle: 'Order',
          // ),
          // profileCenterBtns(
          //   ontap: () {
          //     Navigator.pushNamed(context, RoutesName.promosOffer);
          //   },
          //   tColor: const Color(0xffFF6A9F),
          //   bColor: const Color(0xffD50059),
          //   icon: Icons.card_giftcard_outlined,
          //   title: 'Offer &',
          //   subtitle: 'Promos',
          // ),
          // profileCenterBtns(
          //   ontap: () {
          //     Navigator.pushNamed(context, RoutesName.deliveryAddress);
          //   },
          //   tColor: const Color(0xff6DF5FC),
          //   bColor: const Color(0xff3CB6BB),
          //   icon: Icons.home_outlined,
          //   title: 'Delivery',
          //   subtitle: 'Address',
          // ),
        ],
      ),
    );
  }
}
