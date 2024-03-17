// ignore_for_file: file_names

import 'package:emos/routes/routes_name.dart';
import 'package:flutter/material.dart';

import '../../../res/GlobalColors/colors.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final int currentIndex;
  final Function(int) onTap;
  //  final Function toggleDrawer;

  const CustomBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  // ignore: library_private_types_in_public_api
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  List<bool> isSelected = [
    true,
    false,
    false,
    false,
    false
  ]; // Track selected state

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      color: AppColor.whiteColor,
      elevation: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            icon: const ImageIcon(AssetImage("images/home.png")),
            color:
                isSelected[0] ? AppColor.bgFillColor : AppColor.bottomIconColor,
            onPressed: () {
              widget.onTap(0);
              setState(() {
                isSelected = [true, false, false, false, false];
              });
            },
          ),
          IconButton(
            icon: const ImageIcon(AssetImage("images/chat.png")),
            color:
                isSelected[1] ? AppColor.bgFillColor : AppColor.bottomIconColor,
            onPressed: () {
              widget.onTap(1);
              setState(() {
                isSelected = [false, true, false, false, false];
              });
              Navigator.pushNamed(context, RouteName.chattingView);
            },
          ),
          Container(
            width: 60,
            height: 60,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFFB81717),
                  Color(0xffDF5353), // Center color
                  Color(0xFFA10F0F),
                ],
                stops: [0.0, 0.5, 1.0], // Position of each color
              ),
            ),
            child: IconButton(
              icon: const Icon(
                Icons.wb_twilight_outlined,
                size: 36.0,
                color: AppColor.whiteColor,
              ),
              onPressed: () {
                widget.onTap(2);
                setState(() {
                  isSelected = [false, false, true, false, false];
                });
                Navigator.pushNamed(context, RouteName.mapView);
              },
            ),
          ),
          IconButton(
            icon: const ImageIcon(AssetImage("images/notification.png")),
            color:
                isSelected[3] ? AppColor.bgFillColor : AppColor.bottomIconColor,
            onPressed: () {
              widget.onTap(3);
              setState(() {
                isSelected = [false, false, false, true, false];
              });
              Navigator.pushNamed(context, RouteName.notificationView);
            },
          ),
          IconButton(
            icon: const ImageIcon(AssetImage("images/menu.png")),
            color: AppColor.bottomIconColor,
            onPressed: () {
              widget.onTap(4);
              setState(() {
                isSelected = [false, false, false, false, true];
              });
              Navigator.pushNamed(context, RouteName.homeMenuView);
            },
          ),
        ],
      ),
    );
  }
}
