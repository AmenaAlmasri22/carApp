import 'package:amena_s_application4/presentation/company_car_screen/bloc/company_car_bloc.dart';
import 'package:amena_s_application4/presentation/company_car_screen/models/company_car_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'core/app_export.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:sizer/sizer.dart';
import 'package:amena_s_application4/core/utils/pref_utils.dart';

void main() {
  var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
  WidgetsFlutterBinding.ensureInitialized();

  Future.wait([
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]),
  ]).then((value) {
    PrefUtils().init();
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     final ThemeHelper _themeHelper = ThemeHelper();
    return Sizer(
      builder: (context, orientation, deviceType) {
        return BlocProvider(
          create: (context) =>
              ThemeBloc(ThemeState(themeType: PrefUtils().getThemeData())),
          child: BlocBuilder<ThemeBloc, ThemeState>(
            builder: (context, state) {
              return MediaQuery(
                  data: MediaQuery.of(context).copyWith(
                    textScaler: TextScaler.linear(1.0),
                  ),
                  child: BlocProvider<CompanyCarBloc>(
                    create: (context) => CompanyCarBloc(
                      CompanyCarState(companyCarModelObj: CompanyCarModel()),
                    )..add(CompanyCarInitialEvent()),
                    child: MaterialApp(
                      title: 'amena_s_application4',
                      theme: _themeHelper.themeData(),
                      navigatorKey: NavigatorService.navigatorKey,
                      debugShowCheckedModeBanner: false,
                      localizationsDelegates: [
                        AppLocalizationDelegate(),
                        GlobalMaterialLocalizations.delegate,
                        GlobalWidgetsLocalizations.delegate,
                        GlobalCupertinoLocalizations.delegate,
                      ],
                      supportedLocales: [
                        Locale('en', ''),
                      ],
                      initialRoute: AppRoutes.initialRoute,
                      routes: AppRoutes.routes,
                    ),
                  ));
            },
          ),
        );
      },
    );
  }
}
