import 'package:amena_s_application4/core/utils/navigator_service.dart';
import 'package:amena_s_application4/core/utils/size_utils.dart';
import 'package:amena_s_application4/presentation/app_navigation_screen/bloc/app_navigation_bloc.dart';
import 'package:amena_s_application4/presentation/app_navigation_screen/models/app_navigation_model.dart';
import 'package:amena_s_application4/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
      create: (context) => AppNavigationBloc(AppNavigationState(
        appNavigationModelObj: AppNavigationModel(),
      ))
        ..add(AppNavigationInitialEvent()),
      child: AppNavigationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
        create: (context) => AppNavigationBloc(AppNavigationState(
              appNavigationModelObj: AppNavigationModel(),
            ))
              ..add(AppNavigationInitialEvent()),
        child: BlocBuilder<AppNavigationBloc, AppNavigationState>(
          builder: (context, state) {
            return Scaffold(
              backgroundColor: Color(0XFFFFFFFF),
              body: SafeArea(
                child: SizedBox(
                  width: 375.h,
                  child: Column(
                    children: [
                      _buildHeader(),
                      Expanded(
                        child: SingleChildScrollView(
                          child: _buildScreenList(context),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ));
  }

  Widget _buildHeader() {
    return Container(
      decoration: BoxDecoration(color: Color(0XFFFFFFFF)),
      child: Column(
        children: [
          SizedBox(height: 10.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: Text(
              "App Navigation",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0XFF000000),
                fontSize: 20.fSize,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(height: 10.h),
          Padding(
            padding: EdgeInsets.only(left: 20.h),
            child: Text(
              "Check your app's UI from the below demo screens of your app.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0XFF888888),
                fontSize: 16.fSize,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(height: 5.h),
          Divider(
            height: 1.h,
            thickness: 1.h,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  Widget _buildScreenList(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color(0XFFFFFFFF)),
      child: Column(
        children: [
          _buildScreenTitle(context, "Company Car", AppRoutes.companyCarScreen),
          _buildScreenTitle(context, "Company - Add car step One",
              AppRoutes.companyAddCarStepOneScreen),
          _buildScreenTitle(context, "Company - Add car step Two",
              AppRoutes.companyAddCarStepTwoScreen),
          _buildScreenTitle(context, "Company - Add car step Three",
              AppRoutes.companyAddCarStepThreeScreen),
          _buildScreenTitle(context, "Company - Add car step Four",
              AppRoutes.companyAddCarStepFourScreen),
          _buildScreenTitle(context, "Company - Add car step Five",
              AppRoutes.companyAddCarStepFiveScreen),
        ],
      ),
    );
  }

  Widget _buildScreenTitle(
      BuildContext context, String screenTitle, String routeName) {
    return GestureDetector(
      onTap: () => onTapScreenTitle(routeName),
      child: Container(
        decoration: BoxDecoration(color: Color(0XFFFFFFFF)),
        child: Column(
          children: [
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                screenTitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 10.h),
            SizedBox(height: 5.h),
            Divider(
              height: 1.h,
              thickness: 1.h,
              color: Color(0XFF888888),
            )
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
