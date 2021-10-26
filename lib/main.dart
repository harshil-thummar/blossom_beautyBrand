import 'package:flutter/material.dart';
import 'package:flutter_app/constance/constance.dart';
import 'package:flutter_app/constance/theme.dart';
import 'package:flutter_app/splash/spash_screen.dart';
import 'package:flutter_app/constance/constance.dart' as constance;

import 'Home/costome_bottombar.dart';
import 'Login/create_password.dart';
import 'Login/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  static setCustomeTheme(BuildContext context, int index) {
    final _MyAppState? state = context.findAncestorStateOfType<_MyAppState>();
    state!.setCustomeTheme(index);
  }

  static setCustomeLanguage(BuildContext context, String languageCode) {
    final _MyAppState? state = context.findAncestorStateOfType<_MyAppState>();
    state!.setLanguage(languageCode);
  }

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  setCustomeTheme(int index) {
    if (index == 6) {
      setState(() {
        AppTheme.isLightTheme = true;
      });
    } else if (index == 7) {
      setState(() {
        AppTheme.isLightTheme = false;
      });
    } else {
      setState(() {
        constance.colorsIndex = index;
        constance.primaryColorString = ConstanceData().colors[constance.colorsIndex];
        constance.secondaryColorString = constance.primaryColorString;
      });
    }
  }

  String locale = "en";

  setLanguage(String languageCode) {
    setState(() {
      locale = languageCode;
      constance.locale = languageCode;
    });
  }

  @override
  Widget build(BuildContext context) {
    constance.locale = locale;
    return MaterialApp(
      theme: AppTheme.getTheme(),
      debugShowCheckedModeBanner: false,
      routes: routes,
    );
  }

  var routes = <String, WidgetBuilder>{
    Routes.sPLASH: (BuildContext context) => SplashScreen(),
    Routes.lOGIN: (BuildContext context) => LoginScreen(),
    Routes.cREATEPASSWORD: (BuildContext context) => CreatePassword(),
    Routes.hOME: (BuildContext context) => CostomeBottomBar(),
    Routes.lOGOUT: (BuildContext context) => LoginScreen(),
  };
}

class Routes {
  static String sPLASH = "/";
  static String lOGIN = "/Login/login_screen";
  static String cREATEPASSWORD = "/Login/email_verification";
  static String hOME = "/Home/costome_bottombar";
  static String lOGOUT = "Home/login_screen";
}
