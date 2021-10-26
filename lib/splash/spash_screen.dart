// ignore_for_file: deprecated_member_use, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_app/constance/constance.dart' as constance;
import 'package:flutter_app/Language/LanguageData.dart';
import 'package:flutter_app/constance/constance.dart';

import '../main.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isLoading = false;
  @override
  void initState() {
    myContext = context;
    _loadNextScreen();
    super.initState();
  }

  late BuildContext myContext;

  _loadNextScreen() async {
    await Future.delayed(Duration(milliseconds: 2000));
    if (!mounted) return;
    // ignore: unnecessary_null_comparison
    if (constance.allTextData == null) {
      constance.allTextData = AllTextData.fromJson(
        json.decode(
          await DefaultAssetBundle.of(myContext).loadString(
            "jsonFile/languagetext.json",
          ),
        ),
      );
    }
    checkUserStatus();
  }

  checkUserStatus() {
    Navigator.pushReplacementNamed(context, Routes.lOGIN);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              ConstanceData.blossomLogo,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          CircularProgressIndicator(
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
