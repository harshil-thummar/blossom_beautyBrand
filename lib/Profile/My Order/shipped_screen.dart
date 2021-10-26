// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_app/Home/full_screen_view.dart';
import 'package:flutter_app/Language/appLocalizations.dart';

class ShippedScreen extends StatefulWidget {
  const ShippedScreen({Key? key}) : super(key: key);

  @override
  _ShippedScreenState createState() => _ShippedScreenState();
}

class _ShippedScreenState extends State<ShippedScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).dividerColor,
      child: ListView(
        padding: EdgeInsets.all(0),
        children: [
          Column(
            children: [
              shippedDitaileBox(),
              SizedBox(height: 8),
              shippedDitaileBox(),
            ],
          ),
        ],
      ),
    );
  }

  Widget shippedDitaileBox() {
    return Container(
      padding: EdgeInsets.all(15),
      width: MediaQuery.of(context).size.width,
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Column(
        children: [
          SizedBox(
            height: 80,
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FullView(
                          fullImage: "assets/Fantasist Night Cream.png",
                          bgColor: Color(0xffffcfd1),
                        ),
                      ),
                    );
                  },
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/Fantasist Night Cream.png"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
                SizedBox(width: 15),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                          'Skincare Bestie Globol, Combo Andora Chabel 2020,Melinda Lipstick',
                          style: Theme.of(context).textTheme.headline1!),
                      SizedBox(height: 0),
                      Text(
                        '3 items',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Id Order',
                style: TextStyle(color: Colors.grey),
              ),
              Text(AppLocalizations.of('#0D4886'), style: Theme.of(context).textTheme.headline1!),
            ],
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total Product',
                style: TextStyle(color: Colors.grey),
              ),
              Text(AppLocalizations.of('\$272.00'), style: Theme.of(context).textTheme.headline1!),
            ],
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Status',
                style: TextStyle(color: Colors.grey),
              ),
              Text(AppLocalizations.of('Finished'),
                  style: Theme.of(context).textTheme.headline1!.copyWith(
                        color: Color(0xff00b787),
                      )),
            ],
          ),
          SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(AppLocalizations.of('Rate for products'),
                  style: Theme.of(context).textTheme.headline1!.copyWith(
                        color: Theme.of(context).primaryColor,
                      )),
              ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13),
                    ),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  '  Re-Order  ',
                  style: Theme.of(context)
                      .textTheme
                      .headline1!
                      .copyWith(color: Colors.white, fontSize: 14),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
