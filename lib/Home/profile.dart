import 'package:flutter/material.dart';
import 'package:flutter_app/Language/appLocalizations.dart';
import 'package:flutter_app/Profile/Delivery%20Address/delivery_address.dart';
import 'package:flutter_app/Profile/My%20Order/my_order_tab.dart';
import 'package:flutter_app/Profile/Settings/setting_page.dart';
import 'package:flutter_app/Profile/account_info.dart';
import 'package:flutter_app/Profile/payment_method.dart';
import 'package:flutter_app/constance/constance.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../main.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).dividerColor,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.width / 1.5,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(ConstanceData.profileScreenBG),
              ),
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20)),
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                SizedBox(
                  height: 170,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20,
                              height: 20,
                            ),
                            Container(
                              width: 100,
                              child: CircleAvatar(
                                radius: 40,
                                backgroundImage: NetworkImage(
                                    'https://www.google.com/maps/uv?pb=!1s0x3be0456a49d66ce5%3A0x1440baa58aadc609!3m1!7e115!4shttps%3A%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipMch9mtyD12KDnHPjIDIcs2O6E7FzsxdFHEOaIw%3Dw160-h160-k-no!5sharshil%20thummar%20-%20Google%20Search!15sCgIgAQ&imagekey=!1e10!2sAF1QipMch9mtyD12KDnHPjIDIcs2O6E7FzsxdFHEOaIw&hl=en&sa=X&ved=2ahUKEwij-e3n5ozzAhU18HMBHb6sDIIQoip6BAhEEAM#'),
                              ),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.white,
                                  width: 2.2,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushReplacementNamed(
                                    context, Routes.lOGOUT);
                              },
                              child: Icon(FontAwesomeIcons.signOutAlt,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        Text(
                          AppLocalizations.of('Harshil Thummar'),
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          AppLocalizations.of('@harshil_102b'),
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  width: double.infinity,
                  margin: EdgeInsets.fromLTRB(15, 10, 15, 15),
                  padding: EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    color: Theme.of(context).backgroundColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            AppLocalizations.of('7'),
                            style: Theme.of(context)
                                .textTheme
                                .headline1!
                                .copyWith(fontSize: 17),
                          ),
                          Text(
                            AppLocalizations.of('Posts'),
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2!
                                .copyWith(fontSize: 13),
                          ),
                        ],
                      ),
                      VerticalDivider(
                          indent: 20,
                          thickness: 1.4,
                          endIndent: 20,
                          color: Theme.of(context).dividerColor),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            '5',
                            style: Theme.of(context)
                                .textTheme
                                .headline1!
                                .copyWith(fontSize: 17),
                          ),
                          Text(
                            'Orders',
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2!
                                .copyWith(fontSize: 13),
                          ),
                        ],
                      ),
                      VerticalDivider(
                          indent: 20,
                          thickness: 1.4,
                          endIndent: 20,
                          color: Theme.of(context).dividerColor),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            '7',
                            style: Theme.of(context)
                                .textTheme
                                .headline1!
                                .copyWith(fontSize: 17),
                          ),
                          Text(
                            'Wish List',
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2!
                                .copyWith(fontSize: 13),
                          ),
                        ],
                      ),
                      VerticalDivider(
                          indent: 20,
                          thickness: 1.4,
                          endIndent: 20,
                          color: Theme.of(context).dividerColor),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            '364',
                            style: Theme.of(context)
                                .textTheme
                                .headline1!
                                .copyWith(fontSize: 17),
                          ),
                          Text(
                            'Likes',
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2!
                                .copyWith(fontSize: 13),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView(children: [
                    Column(
                      children: [
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
                          padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
                          decoration: BoxDecoration(
                            color: Theme.of(context).backgroundColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              ListTile(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => AccountInfo(),
                                    ),
                                  );
                                },
                                title: Text("Account Information"),
                                trailing: Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: Theme.of(context).iconTheme.color,
                                  size: 15,
                                ),
                                leading: customeSettingIcon(
                                  FontAwesomeIcons.solidUser,
                                  Color(0xfff4651f),
                                ),
                              ),
                              Divider(
                                endIndent: 20,
                                indent: 20,
                                color: Theme.of(context).dividerColor,
                                thickness: 1.7,
                              ),
                              ListTile(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => MyOrder(),
                                    ),
                                  );
                                },
                                title: Text("My Order"),
                                trailing: Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: Theme.of(context).iconTheme.color,
                                  size: 16,
                                ),
                                leading: customeSettingIcon(
                                  FontAwesomeIcons.shoppingCart,
                                  Color(0xff01b183),
                                ),
                              ),
                              Divider(
                                endIndent: 20,
                                indent: 20,
                                color: Theme.of(context).dividerColor,
                                thickness: 1.7,
                              ),
                              ListTile(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => PaymentMethod(),
                                    ),
                                  );
                                },
                                title: Text("Payment Method"),
                                trailing: Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: Theme.of(context).iconTheme.color,
                                  size: 16,
                                ),
                                leading: customeSettingIcon(
                                  FontAwesomeIcons.wallet,
                                  Color(0xfffeb100),
                                ),
                              ),
                              Divider(
                                endIndent: 20,
                                indent: 20,
                                color: Theme.of(context).dividerColor,
                                thickness: 1.7,
                              ),
                              ListTile(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => DeliveryAddress(),
                                    ),
                                  );
                                },
                                title: Text("Delivery Address"),
                                trailing: Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: Theme.of(context).iconTheme.color,
                                  size: 16,
                                ),
                                leading: customeSettingIcon(
                                  Icons.location_on,
                                  Color(0xff8447fe),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
                          padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
                          decoration: BoxDecoration(
                            color: Theme.of(context).backgroundColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              ListTile(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => SettingPage(),
                                      ));
                                },
                                title: Text("Settings"),
                                trailing: Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: Theme.of(context).iconTheme.color,
                                  size: 15,
                                ),
                                leading: customeSettingIcon(
                                  Icons.settings,
                                  Color(0xff181818),
                                ),
                              ),
                              Divider(
                                endIndent: 20,
                                indent: 20,
                                color: Theme.of(context).dividerColor,
                                thickness: 1.7,
                              ),
                              ListTile(
                                onTap: () {},
                                title: Text("Contact with Us"),
                                trailing: Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: Theme.of(context).iconTheme.color,
                                  size: 16,
                                ),
                                leading: customeSettingIcon(
                                  FontAwesomeIcons.solidCommentDots,
                                  Color(0xff028ffb),
                                ),
                              ),
                              Divider(
                                endIndent: 20,
                                indent: 20,
                                color: Theme.of(context).dividerColor,
                                thickness: 1.7,
                              ),
                              ListTile(
                                title: Text("About Us"),
                                trailing: Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: Theme.of(context).iconTheme.color,
                                  size: 16,
                                ),
                                leading: customeSettingIcon(
                                  Icons.info,
                                  Color(0xff8447fe),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget customeSettingIcon(IconData icon, Color color) {
    return Container(
      height: 42,
      width: 42,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(15), color: color),
      child: Icon(
        icon,
        color: Colors.white,
        size: 20,
      ),
    );
  }
}
