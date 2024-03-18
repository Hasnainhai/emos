import 'package:emos/routes/routes_name.dart';
import 'package:emos/view/AddCardView/add_card_view.dart';
import 'package:emos/view/AppointmentHosptialView/add_depedent_view.dart';
import 'package:emos/view/AppointmentHosptialView/chose_patiant_view.dart';
import 'package:emos/view/AuthScreens/ForgetPasswordView/forget_password_screen.dart';
import 'package:emos/view/AuthScreens/LoginVIew/login_view.dart';
import 'package:emos/view/AuthScreens/RegisterView/register_view.dart';
import 'package:emos/view/CallView/call_view.dart';
import 'package:emos/view/ChattingView/chatting_view.dart';
import 'package:emos/view/ClinicView/Widgets/clinic_filter_view.dart';
import 'package:emos/view/ClinicView/chose_clinic_patient_view.dart';
import 'package:emos/view/ClinicView/clinic_tabbar.dart';
import 'package:emos/view/DoctorViews/detail_doctor_view.dart';
import 'package:emos/view/DrAtHomeView/Widgets/dr-at-home-filter.dart';
import 'package:emos/view/DrAtHomeView/dr_chose_patient_view.dart';
import 'package:emos/view/DrAtHomeView/dr_tabbar.dart';
import 'package:emos/view/EmergancyView/emergancy_view.dart';
import 'package:emos/view/FamilyView/cardInfo.dart';
import 'package:emos/view/FamilyView/family_view.dart';
import 'package:emos/view/HomeCare/Widgets/home_care_filter.dart';
import 'package:emos/view/HomeCare/chose_patient_homecare_.dart';
import 'package:emos/view/HomeCare/home_care_tabbar.dart';
import 'package:emos/view/HomeMenuView/menuView.dart';
import 'package:emos/view/HomeView/HomeView.dart';
import 'package:emos/view/HosptialListView/book_hosptial_apointment_view.dart';
import 'package:emos/view/HosptialListView/hosptial_search_view.dart';
import 'package:emos/view/HosptialListView/hosptial_tab_bar.dart';
import 'package:emos/view/HosptialView/detail_hosptial_view.dart';
import 'package:emos/view/HosptialView/find_hosptial.dart';
import 'package:emos/view/InformationView/information_screen.dart';
import 'package:emos/view/LaboratoryView/Widgets/laboratory_filter.dart';
import 'package:emos/view/LaboratoryView/chose_laboratory_test.dart';
import 'package:emos/view/LaboratoryView/laboratory_tabbar.dart';
import 'package:emos/view/MedicalHistory/edit_medical_history.dart';
import 'package:emos/view/MedicalHistory/medical_history_view.dart';
import 'package:emos/view/InvoicesView/invoices_view.dart';
import 'package:emos/view/NotificationsViews/notifications_view.dart';
import 'package:emos/view/OnBoardingScreens/onBoarding1.dart';
import 'package:emos/view/OnBoardingScreens/onBoarding2.dart';
import 'package:emos/view/OnBoardingScreens/onBoarding3.dart';
import 'package:emos/view/OnBoardingScreens/splash_screen.dart';
import 'package:emos/view/PaymentView/chose_payment_method_view.dart';
import 'package:emos/view/ProfileView/profile_view.dart';
import 'package:emos/view/RadiologyView/Widgets/radiology_filter.dart';
import 'package:emos/view/RadiologyView/radiology_tabbar.dart';
import 'package:emos/view/RadiologyView/select_service_view.dart';
import 'package:emos/view/RatingView/rating_view.dart';
import 'package:emos/view/RecentOrdersView/recent_orders.dart';
import 'package:emos/view/SelectAllergyView/select_alergy_view.dart';
import 'package:emos/view/loadingScreen.dart';
import 'package:flutter/material.dart';
import '../MapVIew/map_view.dart';
import '../view/DoctorViews/find_doctor_view.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.splashScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) => const SplashScreen(),
        );
      case RouteName.onBoarding1:
        return MaterialPageRoute(
          builder: (BuildContext context) => const OnBoardingScreen1(),
        );
      case RouteName.onBoarding2:
        return MaterialPageRoute(
          builder: (BuildContext context) => const OnBoardingScreen2(),
        );
      case RouteName.onBoarding3:
        return MaterialPageRoute(
          builder: (BuildContext context) => const OnBoardingScreen3(),
        );
      case RouteName.loginView:
        return MaterialPageRoute(
          builder: (BuildContext context) => const LoginView(),
        );
      case RouteName.informationview:
        return MaterialPageRoute(
          builder: (BuildContext context) => const InformationScreen(),
        );
      case RouteName.forgetpasswordscreen:
        return MaterialPageRoute(
          builder: (BuildContext context) => const ForgetPasswordScreen(),
        );
      case RouteName.registerView:
        return MaterialPageRoute(
          builder: (BuildContext context) => const RegisterView(),
        );
      case RouteName.homeView:
        return MaterialPageRoute(
          builder: (BuildContext context) => const HomeView(),
        );
      case RouteName.finddoctorview:
        return MaterialPageRoute(
          builder: (BuildContext context) => const FindDoctorView(),
        );
      case RouteName.findhosptialview:
        return MaterialPageRoute(
          builder: (BuildContext context) => const FindHosptialView(),
        );
      case RouteName.detaildoctorview:
        return MaterialPageRoute(
          builder: (BuildContext context) => const DetailDoctorView(),
        );
      case RouteName.detailhosptialview:
        return MaterialPageRoute(
          builder: (BuildContext context) => const DetailHosptialView(),
        );
      case RouteName.emergancyview:
        return MaterialPageRoute(
          builder: (BuildContext context) => const EmergancyView(),
        );
      case RouteName.chosepatiantview:
        return MaterialPageRoute(
          builder: (BuildContext context) => const ChosePatiantView(),
        );
      case RouteName.hosptialtabbar:
        return MaterialPageRoute(
          builder: (BuildContext context) => const HosptialTabBar(),
        );
      case RouteName.notificationView:
        return MaterialPageRoute(
          builder: (BuildContext context) => const NotificationsView(),
        );
      case RouteName.hosptialsearchview:
        return MaterialPageRoute(
          builder: (BuildContext context) => const HosptialSearchView(),
        );
      case RouteName.bookhosptialapointmentview:
        return MaterialPageRoute(
          builder: (BuildContext context) => const BookHosptialApointmentView(),
        );
      case RouteName.chattingView:
        return MaterialPageRoute(
          builder: (BuildContext context) => const ChattingView(),
        );
      case RouteName.homeMenuView:
        return MaterialPageRoute(
          builder: (BuildContext context) => const HomeMenuView(),
        );
      case RouteName.profileView:
        return MaterialPageRoute(
          builder: (BuildContext context) => const ProfileView(),
        );
      case RouteName.adddependetview:
        return MaterialPageRoute(
          builder: (BuildContext context) => const AddDependetView(),
        );
      case RouteName.callview:
        return MaterialPageRoute(
          builder: (BuildContext context) => const CallView(),
        );
      case RouteName.selectAlergyview:
        return MaterialPageRoute(
          builder: (BuildContext context) => const SelectAlergyView(),
        );
      case RouteName.addCardview:
        return MaterialPageRoute(
          builder: (BuildContext context) => const AddCardView(),
        );
      case RouteName.chosepaymentmethodview:
        return MaterialPageRoute(
          builder: (BuildContext context) => const ChosePaymentMethodView(),
        );
      case RouteName.familyMembersview:
        return MaterialPageRoute(
          builder: (BuildContext context) => const FamilyMembers(),
        );
      case RouteName.ratingview:
        return MaterialPageRoute(
          builder: (BuildContext context) => const RatingView(),
        );
      case RouteName.recentOrdersview:
        return MaterialPageRoute(
          builder: (BuildContext context) => const RecentOrdersView(),
        );
      case RouteName.choseserviceview:
        return MaterialPageRoute(
          builder: (BuildContext context) => const SelectServiceView(),
        );
      case RouteName.medicalhistoryview:
        return MaterialPageRoute(
          builder: (BuildContext context) => const MedicalHistoryView(),
        );
      case RouteName.invoicesView:
        return MaterialPageRoute(
          builder: (BuildContext context) => const InvoicesView(),
        );
      case RouteName.radiologytabbar:
        return MaterialPageRoute(
          builder: (BuildContext context) => const RadiologyTabBar(),
        );
      case RouteName.choseclinicpatientview:
        return MaterialPageRoute(
          builder: (BuildContext context) => const ChoseClinicPatientView(),
        );
      case RouteName.clinictabbar:
        return MaterialPageRoute(
          builder: (BuildContext context) => const ClinicTabBar(),
        );
      case RouteName.drchosepatientview:
        return MaterialPageRoute(
          builder: (BuildContext context) => const DrChosePatientView(),
        );
      case RouteName.drtabbar:
        return MaterialPageRoute(
          builder: (BuildContext context) => const DrTabBarView(),
        );
      case RouteName.chosehomecarepatientview:
        return MaterialPageRoute(
          builder: (BuildContext context) => const ChoseHomeCarePatientView(),
        );
      case RouteName.homecaretabbar:
        return MaterialPageRoute(
          builder: (BuildContext context) => const HomeCareTabBar(),
        );
      case RouteName.mapView:
        return MaterialPageRoute(
          builder: (BuildContext context) => const MapConfigView(),
        );
      case RouteName.laboratorytabbar:
        return MaterialPageRoute(
          builder: (BuildContext context) => const LaboratoryTabBar(),
        );
      case RouteName.choselaboratorytestview:
        return MaterialPageRoute(
          builder: (BuildContext context) => const ChoseLaboratoryTestView(),
        );
      case RouteName.cardInfotview:
        return MaterialPageRoute(
          builder: (BuildContext context) => const CardInfoView(),
        );
      case RouteName.laboratoryFilterView:
        return MaterialPageRoute(
          builder: (BuildContext context) => const LaboratoryFilter(),
        );
      case RouteName.drAtHomeFilterView:
        return MaterialPageRoute(
          builder: (BuildContext context) => const DrAtHomeFilter(),
        );
      case RouteName.editMedicalHistory:
        return MaterialPageRoute(
          builder: (BuildContext context) => const EditMedicalHistory(),
        );
      case RouteName.homeCareFilterView:
        return MaterialPageRoute(
          builder: (BuildContext context) => const HomeCareFilter(),
        );
      case RouteName.clinicFilterView:
        return MaterialPageRoute(
          builder: (BuildContext context) => const ClinicFilter(),
        );
      case RouteName.radiologyFilterView:
        return MaterialPageRoute(
          builder: (BuildContext context) => const RadiologyFilter(),
        );
      case RouteName.loadingScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) => const LoadingScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) {
            return const Scaffold(
              body: Center(
                child: Text('No routes define'),
              ),
            );
          },
        );
    }
  }
}
