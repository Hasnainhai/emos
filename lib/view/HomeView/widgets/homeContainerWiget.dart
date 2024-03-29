// ignore_for_file: file_names

import 'package:emos/all_loading_screen.dart';
import 'package:emos/view/HomeView/widgets/homeFeatureWidget.dart';
import 'package:emos/view/RadiologyView/select_service_view.dart';
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
      height: 320.0,
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
                  // Navigator.pushNamed(
                  //   context,
                  //   RouteName.mapView,
                  // );
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (c) => const AllLoadingScreen(
                        text: "Searching Ambulance ...",
                        image: "images/ambulance.png",
                        root: "ambulance",
                      ),
                    ),
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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
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
                child: SizedBox(
                  height: 60.0,
                  width: 108.0,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (c) => const SelectServiceView()));
                    },
                    child: const HomeFeatures(
                      img: 'images/radiology.png',
                      name: 'Radiology',
                    ),
                  ),
                ),
              ),
              Container(
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
              InkWell(
                onTap: () {},
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
