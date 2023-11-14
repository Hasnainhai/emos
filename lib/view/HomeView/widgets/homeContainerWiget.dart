// ignore_for_file: file_names

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
                  Navigator.pushNamed(
                    context,
                    RouteName.chosepatiantview,
                  );
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
                    child: HomeFeatures(
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
                    RouteName.mapView,
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
                    child: HomeFeatures(
                      img: 'images/ambulance.png',
                      name: 'Ambulance',
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    RouteName.choseclinicpatientview,
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
                    ),
                  ),
                  child: const SizedBox(
                    height: 60.0,
                    width: 108.0,
                    child: HomeFeatures(
                      img: 'images/clinic.png',
                      name: 'Clinic',
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    RouteName.drchosepatientview,
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
                    child: HomeFeatures(
                      img: 'images/drHome.png',
                      name: 'Dr at Home',
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    RouteName.chosehomecarepatientview,
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
                    child: HomeFeatures(
                      img: 'images/homeCare.png',
                      name: 'Home Care',
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    RouteName.choselaboratorytestview,
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
                    ),
                  ),
                  child: const SizedBox(
                    height: 60.0,
                    width: 108.0,
                    child: HomeFeatures(
                      img: 'images/labotoryTest.png',
                      name: 'Laboratory\n        Test',
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    RouteName.chosepatiantview,
                  );
                },
                child: Container(
                  height: 100.0,
                  width: 115.0,
                  decoration: const BoxDecoration(
                    border: Border(
                      right: BorderSide(
                        color: AppColor.textFieldColor,
                        width: 1.0,
                      ),
                    ),
                  ),
                  child: const SizedBox(
                    height: 60.0,
                    width: 108.0,
                    child: HomeFeatures(
                      img: 'images/radiology.png',
                      name: 'Radiology',
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    RouteName.chosepatiantview,
                  );
                },
                child: Container(
                  height: 100.0,
                  width: 115.0,
                  decoration: const BoxDecoration(
                    border: Border(
                      right: BorderSide(
                        color: AppColor.textFieldColor,
                        width: 1.0,
                      ),
                    ),
                  ),
                  child: const SizedBox(
                    height: 60.0,
                    width: 108.0,
                    child: HomeFeatures(
                      img: 'images/pharmacy.png',
                      name: 'Pharmacy\n   (soon)',
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    RouteName.chosepatiantview,
                  );
                },
                child: const SizedBox(
                  height: 100.0,
                  width: 115.0,
                  child: SizedBox(
                    height: 60.0,
                    width: 108.0,
                    child: HomeFeatures(
                      img: 'images/others.png',
                      name: 'Other (soon)',
                    ),
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
