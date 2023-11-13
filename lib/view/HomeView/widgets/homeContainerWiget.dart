import 'package:emos/view/HomeView/widgets/homeFeatureWidget.dart';
import 'package:flutter/material.dart';

import '../../../res/GlobalColors/colors.dart';
import '../../../routes/routes_name.dart';

class HomeContainerWidget extends StatefulWidget {
  const HomeContainerWidget({
    super.key,
  });
  @override
  State<HomeContainerWidget> createState() => _HomeContainerWidgetState();
}

class _HomeContainerWidgetState extends State<HomeContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 301.0,
      width: 350.0,
      decoration: BoxDecoration(
        color: AppColor.whiteColor,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        children: [
          Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, RouteName.chosepatiantview);
                  // widget.ontap();
                },
                child: Container(
                  height: 100.0,
                  width: 115.0,
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: AppColor.textFieldColor,
                        width: 1.0,
                      ),
                      right: BorderSide(
                        color: AppColor.textFieldColor,
                        width: 1.0,
                      ),
                    ),
                  ),
                  child: const SizedBox(
                    height: 60.0,
                    width: 108.0,
                    child: homeFeatures(
                      img: 'images/hospital.png',
                      name: 'Hospital',
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    RouteName.choseserviceview,
                  );
                },
                child: Container(
                  height: 100.0,
                  width: 115.0,
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: AppColor.textFieldColor,
                        width: 1.0,
                      ),
                      right: BorderSide(
                        color: AppColor.textFieldColor,
                        width: 1.0,
                      ),
                    ),
                  ),
                  child: const SizedBox(
                    height: 60.0,
                    width: 108.0,
                    child: homeFeatures(
                      img: 'images/ambulance.png',
                      name: 'Ambulance',
                    ),
                  ),
                ),
              ),
              Container(
                height: 100.0,
                width: 115.0,
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: AppColor.textFieldColor,
                      width: 1.0,
                    ),
                  ),
                ),
                child: const SizedBox(
                  height: 60.0,
                  width: 108.0,
                  child: homeFeatures(
                    img: 'images/clinic.png',
                    name: 'Clinic',
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                height: 100.0,
                width: 115.0,
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: AppColor.textFieldColor,
                      width: 1.0,
                    ),
                    right: BorderSide(
                      color: AppColor.textFieldColor,
                      width: 1.0,
                    ),
                  ),
                ),
                child: const SizedBox(
                  height: 60.0,
                  width: 108.0,
                  child: homeFeatures(
                    img: 'images/drHome.png',
                    name: 'Dr at Home',
                  ),
                ),
              ),
              Container(
                height: 100.0,
                width: 115.0,
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: AppColor.textFieldColor,
                      width: 1.0,
                    ),
                    right: BorderSide(
                      color: AppColor.textFieldColor,
                      width: 1.0,
                    ),
                  ),
                ),
                child: const SizedBox(
                  height: 60.0,
                  width: 108.0,
                  child: homeFeatures(
                    img: 'images/homeCare.png',
                    name: 'Home Care',
                  ),
                ),
              ),
              Container(
                height: 100.0,
                width: 115.0,
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: AppColor.textFieldColor,
                      width: 1.0,
                    ),
                  ),
                ),
                child: const SizedBox(
                  height: 60.0,
                  width: 108.0,
                  child: homeFeatures(
                    img: 'images/labotoryTest.png',
                    name: 'Laboratory\n        Test',
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                height: 100.0,
                width: 115.0,
                decoration: const BoxDecoration(
                  border: Border(
                    // bottom: BorderSide(
                    //   color: AppColor.textFieldColor,
                    //   width: 1.0,
                    // ),
                    right: BorderSide(
                      color: AppColor.textFieldColor,
                      width: 1.0,
                    ),
                  ),
                ),
                child: const SizedBox(
                  height: 60.0,
                  width: 108.0,
                  child: homeFeatures(
                    img: 'images/radiology.png',
                    name: 'Radiology',
                  ),
                ),
              ),
              Container(
                height: 100.0,
                width: 115.0,
                decoration: const BoxDecoration(
                  border: Border(
                    // bottom: BorderSide(
                    //   color: AppColor.textFieldColor,
                    //   width: 1.0,
                    // ),
                    right: BorderSide(
                      color: AppColor.textFieldColor,
                      width: 1.0,
                    ),
                  ),
                ),
                child: const SizedBox(
                  height: 60.0,
                  width: 108.0,
                  child: homeFeatures(
                    img: 'images/pharmacy.png',
                    name: 'Pharmacy\n   (soon)',
                  ),
                ),
              ),
              Container(
                height: 100.0,
                width: 115.0,
                child: const SizedBox(
                  height: 60.0,
                  width: 108.0,
                  child: homeFeatures(
                    img: 'images/others.png',
                    name: 'Other (soon)',
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
