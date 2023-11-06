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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            icon: const Icon(Icons.home_rounded),
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
            icon: const Icon(
              Icons.message_rounded,
            ),
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
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isSelected[2] ? Colors.redAccent : Colors.red,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  offset: const Offset(0, 3),
                  blurRadius: 6,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: IconButton(
              icon: Icon(
                Icons.wb_twilight_outlined,
                size: 36.0,
                color:
                    isSelected[2] ? AppColor.bgFillColor : AppColor.whiteColor,
              ),
              onPressed: () {
                widget.onTap(2);
                setState(() {
                  isSelected = [false, false, true, false, false];
                });
              },
            ),
          ),
          IconButton(
            icon: const Icon(Icons.notifications_outlined),
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
            icon: const Icon(Icons.menu),
            color:
                isSelected[4] ? AppColor.bgFillColor : AppColor.bottomIconColor,
            onPressed: () {
              widget.onTap(4);
              setState(() {
                isSelected = [false, false, false, false, true];
              });
            },
          ),
        ],
      ),
    );
  }
}
