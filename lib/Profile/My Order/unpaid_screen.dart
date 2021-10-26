// ignore_for_file: prefer_const_constructors, unused_element, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:flutter_app/Home/full_screen_view.dart';
import 'package:flutter_app/Language/appLocalizations.dart';

import 'change_color.dart';
import 'confirm_bill.dart';

class UnpaidScreen extends StatefulWidget {
  const UnpaidScreen({Key? key}) : super(key: key);

  @override
  _UnpaidScreenState createState() => _UnpaidScreenState();
}

class _UnpaidScreenState extends State<UnpaidScreen> {
  int _productCounter1 = 2;
  double _products1 = 48;
  void _addProduct1() {
    setState(() {
      if (_products1 < 10000000) {
        _products1 *= 2;
      }
    });
  }

  void _removeProduct1() {
    setState(() {
      if (_products1 > 00) {
        _products1 /= 2;
      }
    });
  }

  void _addProductCounter1() {
    setState(() {
      if (_productCounter1 < 50) {
        _productCounter1++;
      }
    });
  }

  void _removeProductCounter1() {
    setState(() {
      if (_productCounter1 > 0) {
        _productCounter1--;
      }
    });
  }

  int _productCounter2 = 1;
  double _products2 = 24;
  void _addProduct2() {
    setState(() {
      if (_products2 < 10000000) {
        _products2 *= 2;
      }
    });
  }

  void _removeProduct2() {
    setState(() {
      if (_products2 > 00) {
        _products2 /= 2;
      }
    });
  }

  void _addProductCounter2() {
    setState(() {
      if (_productCounter2 < 50) {
        _productCounter2++;
      }
    });
  }

  void _removeProductCounter2() {
    setState(() {
      if (_productCounter2 > 0) {
        _productCounter2--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).dividerColor,
      child: Stack(
        children: [
          ListView(
            padding: EdgeInsets.all(0),
            children: [
              Container(
                color: Theme.of(context).scaffoldBackgroundColor,
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(height: 100),
                        SizedBox(width: 15),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => FullView(
                                  fullImage: "assets/s2114296-main-zoom.jpg",
                                  bgColor: Colors.white,
                                ),
                              ),
                            );
                          },
                          child: Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/s2114296-main-zoom.jpg"),
                                  fit: BoxFit.cover,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 5,
                                      color: Colors.black12,
                                      spreadRadius: 1)
                                ],
                                borderRadius: BorderRadius.circular(15)),
                          ),
                        ),
                        Expanded(
                          child: ListTile(
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 15),
                                Text(
                                  'Hair Volumizer',
                                  style: Theme.of(context).textTheme.headline1,
                                ),
                                SizedBox(height: 15),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '\$$_products1',
                                      style:
                                          Theme.of(context).textTheme.headline1,
                                    ),
                                    SizedBox(
                                      height: 30,
                                      width: 92,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              _removeProductCounter1();
                                              _removeProduct1();
                                            },
                                            borderRadius:
                                                BorderRadius.circular(9),
                                            child: Container(
                                              height: 28,
                                              width: 28,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(9),
                                                border: Border.all(
                                                  color: Color(0xffbdbdbd),
                                                  width: 2.2,
                                                ),
                                              ),
                                              child: Icon(
                                                Icons.remove,
                                                color: Color(0xffbdbdbd),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            '$_productCounter1',
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline1!
                                                .copyWith(
                                                  fontSize: 17,
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              _addProductCounter1();
                                              _addProduct1();
                                            },
                                            borderRadius:
                                                BorderRadius.circular(9),
                                            child: Container(
                                              height: 28,
                                              width: 28,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(9),
                                                border: Border.all(
                                                  color: Color(0xffbdbdbd),
                                                  width: 2.2,
                                                ),
                                              ),
                                              child: Icon(
                                                Icons.add,
                                                color: Color(0xffbdbdbd),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                color: Theme.of(context).scaffoldBackgroundColor,
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 15),
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
                            margin: EdgeInsets.fromLTRB(0, 8, 0, 10),
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/Fantasist Night Cream.png"),
                                  fit: BoxFit.cover,
                                ),
                                // ignore: prefer_const_literals_to_create_immutables
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 5,
                                      color: Colors.black12,
                                      spreadRadius: 1)
                                ],
                                borderRadius: BorderRadius.circular(15)),
                          ),
                        ),
                        Expanded(
                          child: ListTile(
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 15),
                                Text(
                                  'Fantasist Night Cream',
                                  style: Theme.of(context).textTheme.headline1,
                                ),
                                SizedBox(height: 15),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '\$$_products2',
                                      style:
                                          Theme.of(context).textTheme.headline1,
                                    ),
                                    SizedBox(
                                      height: 30,
                                      width: 92,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              _removeProductCounter2();
                                              _removeProduct2();
                                            },
                                            borderRadius:
                                                BorderRadius.circular(9),
                                            child: Container(
                                              height: 28,
                                              width: 28,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(9),
                                                border: Border.all(
                                                  color: Color(0xffbdbdbd),
                                                  width: 2.2,
                                                ),
                                              ),
                                              child: Icon(
                                                Icons.remove,
                                                color: Color(0xffbdbdbd),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            '$_productCounter2',
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline1!
                                                .copyWith(
                                                  fontSize: 17,
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              _addProductCounter2();
                                              _addProduct2();
                                            },
                                            borderRadius:
                                                BorderRadius.circular(9),
                                            child: Container(
                                              height: 28,
                                              width: 28,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(9),
                                                border: Border.all(
                                                  color: Color(0xffbdbdbd),
                                                  width: 2.2,
                                                ),
                                              ),
                                              child: Icon(
                                                Icons.add,
                                                color: Color(0xffbdbdbd),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ChangeColor(),
                              ),
                            );
                          },
                          child: Container(
                            padding: EdgeInsets.fromLTRB(8, 4, 8, 4),
                            decoration: BoxDecoration(
                                color: Theme.of(context).dividerColor,
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              children: [
                                Text(AppLocalizations.of('Color:  '),
                                    style:
                                        Theme.of(context).textTheme.headline1!),
                                CircleAvatar(
                                  radius: 8,
                                  backgroundColor: Colors.blueAccent,
                                ),
                                SizedBox(width: 5),
                                Icon(Icons.keyboard_arrow_down,
                                    color: Colors.grey)
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 80)
                      ],
                    ),
                    SizedBox(height: 15),
                  ],
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                  height: 150,
                  width: double.infinity,
                  color: Theme.of(context).scaffoldBackgroundColor,
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Bill',
                            style: Theme.of(context).textTheme.headline1!,
                          ),
                          Text(AppLocalizations.of('\$72.00'),
                              style: Theme.of(context).textTheme.headline1!),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
                      child: SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(13),
                              ),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ConfirmBill()));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(),
                              Text(
                                'Confirm Bill',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline1!
                                    .copyWith(color: Colors.white),
                              ),
                              Icon(Icons.arrow_forward_rounded),
                              SizedBox(),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ])),
            ],
          )
        ],
      ),
    );
  }
}
