// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_app/Costome_widgets/cast_list.dart';
import 'package:flutter_app/Costome_widgets/common_widget.dart';

class SearchScreen extends StatefulWidget {
  SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<String> currencyList = [
    'Purple Lips',
    '3CE',
    'Spring Cllection 2020',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text(
          'Search',
          style: TextStyle(color: Theme.of(context).iconTheme.color),
        ),
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
          print('Click SearchScreen');
        },
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                    child: TextFormField(
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1!
                          .copyWith(fontSize: 18),
                      keyboardType: TextInputType.multiline,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            borderSide: BorderSide(
                                color: Theme.of(context).dividerColor)),
                        prefixIcon: Icon(Icons.search),
                        hintText: "Type product, brand, collecion,....",
                        hintStyle: TextStyle(fontSize: 16),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'History',
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1!
                            .copyWith(color: Colors.grey),
                      ),
                      Text(
                        'Clear all',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                    ],
                  ),
                  for (var i = 0; i < currencyList.length; i++)
                    Column(
                      children: [
                        Container(
                          color: Theme.of(context).scaffoldBackgroundColor,
                          height: 47,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  currencyList[i],
                                  style: Theme.of(context).textTheme.headline1,
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      currencyList.removeAt(i);
                                    });
                                  },
                                  child: Icon(
                                    Icons.close,
                                    color: Colors.grey,
                                    size: 18,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        i < 2
                            ? Divider(
                                height: 0,
                                thickness: 1.5,
                                color: Theme.of(context).dividerColor,
                              )
                            : SizedBox(),
                      ],
                    ),
                ],
              ),
            ),
            Divider(
              thickness: 9,
              height: 6,
              color: Theme.of(context).dividerColor,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15, 20, 15, 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Popular Search',
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1!
                            .copyWith(color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  PopularSearchList(),
                ],
              ),
            ),
            Divider(
              thickness: 9,
              height: 6,
              color: Theme.of(context).dividerColor,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15, 20, 15, 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Suggestion for you',
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1!
                            .copyWith(color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  CommonWidget.SuggestionBox(
                      context: context,
                      img: 'assets/Fantasist Eyeshadow Palette_01.jpg',
                      txt1: 'Ladies',
                      txt2: 'Caanael Cerest',
                      txt3: '24.00',
                      cart: '4.6k',
                      view: '12.4k',
                      bg_color: Color(0xffc47d69)),
                  SizedBox(height: 15),
                  CommonWidget.SuggestionBox(
                      context: context,
                      img: 'assets/Decorative Stackable Plastic Makeup_02.jpg',
                      txt1: 'Ladies',
                      txt2: 'Plastic Makeup',
                      txt3: '36.00',
                      cart: '3.7k',
                      view: '10.5k',
                      bg_color: Color(0xffded9d5)),
                  SizedBox(height: 15),
                  CommonWidget.SuggestionBox(
                      context: context,
                      img: 'assets/s2114296-main-zoom.jpg',
                      txt1: 'Ladies',
                      txt2: 'Conditioner Bestie',
                      txt3: '20.00',
                      cart: '3.4k',
                      view: '11.6k',
                      bg_color: Colors.white),
                  SizedBox(height: 15),
                  CommonWidget.SuggestionBox(
                      context: context,
                      img: 'assets/Fantasist Night Cream.png',
                      txt1: 'Ladies',
                      txt2: 'Fantasist Night Cream',
                      txt3: '18.00',
                      cart: '2.6k',
                      view: '8.2k',
                      bg_color: Color(0xffffcfd1)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
