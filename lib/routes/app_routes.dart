import 'package:amena_s_application4/presentation/company_add_car_step_four_screen/company_add_car_step_four_screen.dart';
import 'package:flutter/material.dart';
import '../presentation/company_add_car_step_three_screen/company_add_car_step_three_screen.dart';
import '../presentation/company_add_car_step_two_screen/company_add_car_step_two_screen.dart';
import '../presentation/company_car_screen/company_car_screen.dart';
import '../presentation/company_add_car_step_one_screen/company_add_car_step_one_screen.dart';
import '../presentation/company_add_car_step_five_screen/company_add_car_step_five_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String initialRoute = 'initialRoute';
  static const String appNavigationScreen = 'app_navigation_screen';
  static const String companyAddCarStepFiveScreen =
      'company_add_car_step_five_screen';
  static const String companyAddCarStepFourScreen =
      'company_add_car_step_four_screen';
  static const String companyAddCarStepThreeScreen =
      'company_add_car_step_three_screen';
  static const String companyAddCarStepTwoScreen =
      'company_add_car_step_two_screen';
  static const String companyAddCarStepOneScreen =
      'company_add_car_step_one_screen';
  static const String companyCarScreen = 'company_car_screen';

  static Map<String, WidgetBuilder> get routes => {
        initialRoute: (context) => CompanyCarScreen(),
        appNavigationScreen: (context) => AppNavigationScreen(),
        companyAddCarStepFiveScreen: (context) =>
            CompanyAddCarStepFiveScreen.builder(),
        companyAddCarStepFourScreen: (context) =>
            CompanyAddCarStepFourScreen.builder(),
        companyAddCarStepThreeScreen: (context) =>
            CompanyAddCarStepThreeScreen.builder(),
        companyAddCarStepTwoScreen: (context) =>
            CompanyAddCarStepTwoScreen.builder(),
        companyAddCarStepOneScreen: (context) =>
            CompanyAddCarStepOneScreen.builder(),
        companyCarScreen: (context) => CompanyCarScreen(),
      };
}
