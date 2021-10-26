// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter_app/constance/constance.dart' as constance;
import 'package:flutter/material.dart';
import 'package:flutter_app/Language/appLocalizations.dart';

import '../../main.dart';
import 'currency_page.dart';
import 'size_page.dart';

enum SingingCharacter { light, dark }
enum GenderChange { Women, Man }

class SettingPage extends StatefulWidget {
  SettingPage({Key? key}) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  SingingCharacter? _character = SingingCharacter.light;
  bool _themeTileExpanded = false;
  bool _themeChange = true;
  bool _notification = true;
  GenderChange? _genderCharacter = GenderChange.Women;
  bool _genderTileExpanded = false;
  bool _genderChange = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Theme.of(context).iconTheme.color,
          ),
        ),
        title: Text(
          'Settings',
          style: TextStyle(color: Theme.of(context).iconTheme.color),
        ),
        elevation: 0,
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              Divider(
                  thickness: 10,
                  height: 10,
                  color: Theme.of(context).dividerColor),
              Container(
                color: Theme.of(context).backgroundColor,
                child: Column(
                  children: [
                    ExpansionTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Theme Mode',
                            style: TextStyle(
                                color: Theme.of(context).iconTheme.color),
                          ),
                          Text(_themeChange ? 'Light' : 'Dark',
                              style: Theme.of(context).textTheme.subtitle2!),
                        ],
                      ),
                      trailing: RotatedBox(
                        quarterTurns: _themeTileExpanded ? 1 : 0,
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 15,
                          color: Theme.of(context).iconTheme.color,
                        ),
                      ),
                      children: <Widget>[
                        RadioListTile<SingingCharacter>(
                          title: Text(AppLocalizations.of('Light')),
                          activeColor: Theme.of(context).primaryColor,
                          value: SingingCharacter.light,
                          groupValue: _character,
                          onChanged: (SingingCharacter? value) {
                            setState(() {
                              changeColor(context, light);
                              _character = value;
                              _themeChange = true;
                            });
                          },
                        ),
                        RadioListTile<SingingCharacter>(
                          title: Text(AppLocalizations.of('Dark')),
                          activeColor: Theme.of(context).primaryColor,
                          value: SingingCharacter.dark,
                          groupValue: _character,
                          onChanged: (SingingCharacter? value) {
                            setState(() {
                              changeColor(context, dark);
                              _character = value;
                              _themeChange = false;
                            });
                          },
                        ),
                        ListTile(
                          onTap: () {
                            _mediaAutoDialog();
                          },
                          contentPadding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                          title: Text(
                            'Advance Theme',
                            style: Theme.of(context)
                                .textTheme
                                .headline1!
                                .copyWith(
                                    color: Theme.of(context).primaryColor),
                          ),
                        )
                      ],
                      onExpansionChanged: (bool expanded) {
                        setState(() => _themeTileExpanded = expanded);
                      },
                    ),
                    Divider(
                      height: 0,
                      endIndent: 15,
                      indent: 15,
                      thickness: 1.5,
                      color: Theme.of(context).dividerColor,
                    ),
                    InkWell(
                      onTap: () {
                        openShowPopupLanguage();
                      },
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(AppLocalizations.of('Language')),
                            SizedBox(
                              child: Row(
                                children: [
                                  Text(AppLocalizations.of('English'),
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle2!),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Icon(Icons.arrow_forward_ios_rounded,
                                      size: 15),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      height: 0,
                      endIndent: 15,
                      indent: 15,
                      thickness: 1.5,
                      color: Theme.of(context).dividerColor,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 20, 15, 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(AppLocalizations.of('Shop in')),
                          SizedBox(
                            child: Row(
                              children: [
                                Text(AppLocalizations.of('Vietnam'),
                                    style:
                                        Theme.of(context).textTheme.subtitle2!),
                                SizedBox(
                                  width: 15,
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  size: 15,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      endIndent: 15,
                      indent: 15,
                      thickness: 1.5,
                      color: Theme.of(context).dividerColor,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CurrencyPage(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(15, 20, 15, 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(AppLocalizations.of('Currency')),
                            SizedBox(
                              child: Row(
                                children: [
                                  Text(AppLocalizations.of('\$ Dollar'),
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle2!),
                                  SizedBox(width: 15),
                                  Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    size: 15,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      endIndent: 15,
                      indent: 15,
                      thickness: 1.5,
                      color: Theme.of(context).dividerColor,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SizeScreen(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(15, 20, 15, 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(AppLocalizations.of('Size')),
                            SizedBox(
                              child: Row(
                                children: [
                                  Text(AppLocalizations.of('US'),
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle2!),
                                  SizedBox(width: 15),
                                  Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    size: 15,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      endIndent: 15,
                      indent: 15,
                      thickness: 1.5,
                      color: Theme.of(context).dividerColor,
                    ),
                    SwitchListTile(
                      contentPadding: EdgeInsets.fromLTRB(15, 0, 0, 5),
                      title: Text(AppLocalizations.of('Notifications')),
                      onChanged: (bool value) {
                        setState(() => _notification = value);
                      },
                      value: _notification,
                    ),
                    Divider(
                      height: 0,
                      endIndent: 15,
                      indent: 15,
                      thickness: 1.5,
                      color: Theme.of(context).dividerColor,
                    ),
                    ExpansionTile(
                      maintainState: false,
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Shop',
                            style: TextStyle(
                                color: Theme.of(context).iconTheme.color),
                          ),
                          Text(_genderChange ? 'Women' : 'Man',
                              style: Theme.of(context).textTheme.subtitle2!),
                        ],
                      ),
                      trailing: RotatedBox(
                        quarterTurns: _genderTileExpanded ? 1 : 0,
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 15,
                          color: Theme.of(context).iconTheme.color,
                        ),
                      ),
                      children: <Widget>[
                        RadioListTile<GenderChange>(
                          title: Text(AppLocalizations.of('Women')),
                          activeColor: Theme.of(context).primaryColor,
                          value: GenderChange.Women,
                          groupValue: _genderCharacter,
                          onChanged: (GenderChange? value) {
                            setState(() {
                              _genderCharacter = value;
                              _genderChange = true;
                            });
                          },
                        ),
                        RadioListTile<GenderChange>(
                          title: Text(AppLocalizations.of('Man')),
                          activeColor: Theme.of(context).primaryColor,
                          value: GenderChange.Man,
                          groupValue: _genderCharacter,
                          onChanged: (
                            GenderChange? value,
                          ) {
                            setState(() {
                              _genderCharacter = value;
                              _genderChange = false;
                            });
                          },
                        ),
                      ],
                      onExpansionChanged: (bool expanded) {
                        setState(() => _genderTileExpanded = expanded);
                      },
                    ),
                    Divider(
                      height: 0,
                      endIndent: 15,
                      indent: 15,
                      thickness: 1.5,
                      color: Theme.of(context).dividerColor,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 20, 15, 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(AppLocalizations.of('Screenshots')),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 15,
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      endIndent: 15,
                      indent: 15,
                      thickness: 1.5,
                      color: Theme.of(context).dividerColor,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(AppLocalizations.of(
                              'Terms & Conditions - Privacy Policy')),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 15,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.width / 4,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(
                right: 14,
                left: 14,
                bottom: MediaQuery.of(context).padding.bottom + 8),
            height: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  AppLocalizations.of('Version: 1.0.1'),
                  style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      fontSize: 14,
                      color: Colors.grey[400],
                      backgroundColor:
                          Theme.of(context).scaffoldBackgroundColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  int light = 1;
  int dark = 2;
  bool selectFirstColor = true;
  bool selectSecondColor = false;
  bool selectThirdColor = false;
  bool selectFourthColor = false;
  bool selectFifthColor = false;
  bool selectSixthColor = false;

  changeColor(BuildContext context, int color) {
    if (color == light) {
      MyApp.setCustomeTheme(context, 6);
    } else {
      MyApp.setCustomeTheme(context, 7);
    }
  }

  openShowPopupLanguage() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Center(
              child: Text(
                AppLocalizations.of('Select Language'),
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).textTheme.headline6!.color,
                      fontSize: 18,
                    ),
              ),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  height: 1,
                  color: Theme.of(context).dividerColor,
                ),
                SizedBox(
                  height: 8,
                ),
                InkWell(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  onTap: () {
                    selectLanguage('en');
                    Navigator.of(context).pop();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        AppLocalizations.of('English'),
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).disabledColor,
                              fontSize: 16,
                            ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  height: 1,
                  color: Theme.of(context).dividerColor,
                ),
                SizedBox(
                  height: 8,
                ),
                InkWell(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  onTap: () {
                    selectLanguage('fr');
                    Navigator.of(context).pop();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        AppLocalizations.of('French'),
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).disabledColor,
                              fontSize: 16,
                            ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  height: 1,
                  color: Theme.of(context).dividerColor,
                ),
                SizedBox(
                  height: 8,
                ),
                InkWell(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  onTap: () {
                    selectLanguage('ar');
                    Navigator.of(context).pop();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        AppLocalizations.of('Arabic'),
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).disabledColor,
                              fontSize: 16,
                            ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  height: 1,
                  color: Theme.of(context).dividerColor,
                ),
                SizedBox(
                  height: 8,
                ),
                InkWell(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  onTap: () {
                    selectLanguage('ja');
                    Navigator.of(context).pop();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        AppLocalizations.of('Japanese'),
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).disabledColor,
                              fontSize: 16,
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }

  selectLanguage(String languageCode) {
    constance.locale = languageCode;
    MyApp.setCustomeLanguage(context, languageCode);
  }

  Widget userDocs() {
    return Container(
      color: Theme.of(context).backgroundColor,
      child: Column(
        children: <Widget>[
          Container(
            height: 1,
            color: Theme.of(context).dividerColor,
          ),
          InkWell(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () {},
            child: Padding(
              padding:
                  const EdgeInsets.only(right: 10, left: 14, top: 8, bottom: 8),
              child: Row(
                children: <Widget>[
                  Text(
                    AppLocalizations.of('Clear cache'),
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).textTheme.headline6!.color,
                        ),
                  ),
                  Expanded(child: SizedBox()),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                    color: Theme.of(context).disabledColor,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Container(
              height: 1,
              color: Theme.of(context).dividerColor,
            ),
          ),
          InkWell(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () {},
            child: Padding(
              padding:
                  const EdgeInsets.only(right: 10, left: 14, top: 8, bottom: 8),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      AppLocalizations.of('Terms & Prvacy Policy'),
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).textTheme.headline6!.color,
                          ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Expanded(child: SizedBox()),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                    color: Theme.of(context).disabledColor,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Container(
              height: 1,
              color: Theme.of(context).dividerColor,
            ),
          ),
          InkWell(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () {},
            child: Padding(
              padding:
                  const EdgeInsets.only(right: 10, left: 14, top: 8, bottom: 8),
              child: Row(
                children: <Widget>[
                  Text(
                    AppLocalizations.of('Contact us'),
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).textTheme.headline6!.color,
                        ),
                  ),
                  Expanded(child: SizedBox()),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                    color: Theme.of(context).disabledColor,
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 1,
            color: Theme.of(context).dividerColor,
          ),
        ],
      ),
    );
  }

  void _mediaAutoDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 15),
          buttonPadding: EdgeInsets.all(5),
          titlePadding: EdgeInsets.fromLTRB(20, 20, 20, 5),
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: Text("Primary Color"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                contentPadding: EdgeInsets.fromLTRB(35, 0, 0, 0),
                onTap: () {
                  selectfirstColor(context);
                },
                leading: CircleAvatar(
                  radius: 10,
                  backgroundColor: Color(0xFFf4651f),
                  child: CircleAvatar(
                    radius: 7.5,
                    backgroundColor: Theme.of(context).backgroundColor,
                    child: !selectFirstColor
                        ? CircleAvatar(
                            radius: 5,
                            backgroundColor: Color(0xFFf4651f),
                          )
                        : SizedBox(),
                  ),
                ),
                title: Text(
                  "Orange",
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.fromLTRB(35, 0, 0, 0),
                onTap: () {
                  selectsecondColor(context);
                },
                leading: CircleAvatar(
                  radius: 10,
                  backgroundColor: Color(0xffFF2222),
                  child: CircleAvatar(
                    radius: 7.5,
                    backgroundColor: Theme.of(context).backgroundColor,
                    child: selectSecondColor
                        ? CircleAvatar(
                            radius: 5,
                            backgroundColor: Color(0xffFF2222),
                          )
                        : SizedBox(),
                  ),
                ),
                title: Text(
                  "Red",
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.fromLTRB(35, 0, 0, 0),
                onTap: () {
                  selectthirdColor(context);
                },
                leading: CircleAvatar(
                  radius: 10,
                  backgroundColor: Color(0xFF32a852),
                  child: CircleAvatar(
                    radius: 7.5,
                    backgroundColor: Theme.of(context).backgroundColor,
                    child: selectThirdColor
                        ? CircleAvatar(
                            radius: 5,
                            backgroundColor: Color(0xFF32a852),
                          )
                        : SizedBox(),
                  ),
                ),
                title: Text(
                  "Green",
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.fromLTRB(35, 0, 0, 0),
                onTap: () {
                  selectfourthColor(context);
                },
                leading: CircleAvatar(
                  radius: 10,
                  backgroundColor: Color(0xFF4C4CFF),
                  child: CircleAvatar(
                    radius: 7.5,
                    backgroundColor: Theme.of(context).backgroundColor,
                    child: selectFourthColor
                        ? CircleAvatar(
                            radius: 5,
                            backgroundColor: Color(0xFF4C4CFF),
                          )
                        : SizedBox(),
                  ),
                ),
                title: Text(
                  "Blue",
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.fromLTRB(35, 0, 0, 0),
                onTap: () {
                  selectfifthColor(context);
                },
                leading: CircleAvatar(
                  radius: 10,
                  backgroundColor: Color(0xFFB323BA),
                  child: CircleAvatar(
                    radius: 7.5,
                    backgroundColor: Theme.of(context).backgroundColor,
                    child: selectFifthColor
                        ? CircleAvatar(
                            radius: 5,
                            backgroundColor: Color(0xFFB323BA),
                          )
                        : SizedBox(),
                  ),
                ),
                title: Text(
                  "Purple",
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.fromLTRB(35, 0, 0, 0),
                onTap: () {
                  selectsixthColor(context);
                },
                leading: CircleAvatar(
                  radius: 10,
                  backgroundColor: Color(0xFFEB1165),
                  child: CircleAvatar(
                    radius: 7.5,
                    backgroundColor: Theme.of(context).backgroundColor,
                    child: selectSixthColor
                        ? CircleAvatar(
                            radius: 5,
                            backgroundColor: Color(0xFFEB1165),
                          )
                        : SizedBox(),
                  ),
                ),
                title: Text(
                  "Pink",
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  selectfirstColor(BuildContext context) {
    if (selectFirstColor) {
      selectFirstColor = false;
      selectSecondColor = false;
      selectThirdColor = false;
      selectFourthColor = false;
      selectFifthColor = false;
      selectSixthColor = false;

      MyApp.setCustomeTheme(context, 0);
    }
  }

  selectsecondColor(BuildContext context) {
    if (!selectSecondColor) {
      selectFirstColor = true;
      selectSecondColor = true;
      selectThirdColor = false;
      selectFourthColor = false;
      selectFifthColor = false;
      selectSixthColor = false;

      MyApp.setCustomeTheme(context, 1);
    }
  }

  selectthirdColor(BuildContext context) {
    if (!selectThirdColor) {
      selectFirstColor = true;
      selectSecondColor = false;
      selectThirdColor = true;
      selectFourthColor = false;
      selectFifthColor = false;
      selectSixthColor = false;
    }
    MyApp.setCustomeTheme(context, 2);
  }

  selectfourthColor(BuildContext context) {
    if (!selectFourthColor) {
      selectFirstColor = true;
      selectSecondColor = false;
      selectThirdColor = false;
      selectFourthColor = true;
      selectFifthColor = false;
      selectSixthColor = false;
    }
    MyApp.setCustomeTheme(context, 3);
  }

  selectfifthColor(BuildContext context) {
    if (!selectFifthColor) {
      selectFirstColor = true;
      selectSecondColor = false;
      selectThirdColor = false;
      selectFourthColor = false;
      selectFifthColor = true;
      selectSixthColor = false;
    }
    MyApp.setCustomeTheme(context, 4);
  }

  selectsixthColor(BuildContext context) {
    if (!selectSixthColor) {
      selectFirstColor = true;
      selectSecondColor = false;
      selectThirdColor = false;
      selectFourthColor = false;
      selectFifthColor = false;
      selectSixthColor = true;
    }
    MyApp.setCustomeTheme(context, 5);
  }
}
