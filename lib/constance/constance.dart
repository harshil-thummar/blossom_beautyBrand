import 'package:flutter/material.dart';
import 'package:flutter_app/Language/LanguageData.dart';

class ConstanceData {
  static String bseImageUrl = 'assets/';
  static String blossomLogo = bseImageUrl + "blossom_logo_NoneBG.png";
  static String blossomTextLogo = bseImageUrl + "appicon.png";
  static String googleIcon = bseImageUrl + "google_icon.png";
  static String facebookIcon = bseImageUrl + "facebook_icon.png";
  static String appleIcon = bseImageUrl + "apple_icon.png";
  static String mastercardLogo = bseImageUrl + "mastercard-logo.png";
  static String visaLogo = bseImageUrl + "visa-logo.png";
  static String emptyIcon = bseImageUrl + "empty_icon.png";
  static String fullNightCream = bseImageUrl + "full_Night_Cream.png";
  static String makeUp01 = bseImageUrl + "cosmetics.png";
  static String profileScreenBG = bseImageUrl + "White_star_design.png";

  static final Color whiteFontColor = Colors.white;
  static final Color buttonColor = Color(0xff317E2F);
  List<String> colors = ['#f4651f', '#FF2222', '#32a852', '#4C4CFF', '#B323BA', '#4FBE9F'];
}

int colorsIndex = 0;

String locale = "en";

AllTextData allTextData = new AllTextData(allText: []);

var primaryColorString = '#f4651f';
var secondaryColorString = '#FFFFFF';
