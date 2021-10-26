// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app/Costome_widgets/ribbon_widget.dart';
import 'package:flutter_app/Language/appLocalizations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:like_button/like_button.dart';

import 'createNewPost.dart';
import 'full_screen_view.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isBookmark = false;
  String dropdownValue = 'Newest';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
          print('Click HomeScreen');
        },
        child: SafeArea(
          top: true,
          bottom: true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: RefreshIndicator(
                  strokeWidth: 3,
                  onRefresh: () async {
                    return await Future.delayed(Duration(seconds: 2));
                  },
                  child: Scrollbar(
                    child: ListView(
                      padding: EdgeInsets.fromLTRB(0, 0, 3, 0),
                      shrinkWrap: true,
                      // padding: EdgeInsets.zero,
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                SizedBox(width: 15),
                                Text(
                                  AppLocalizations.of('Hi, Harshil 😎'),
                                  style: Theme.of(context).textTheme.headline1,
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 15),
                              child: Row(
                                children: [
                                  Text(
                                    AppLocalizations.of(
                                        'Have somthing to share with the community?'),
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle2!
                                        .copyWith(fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                                thickness: 0.8,
                                height: 6,
                                color: Theme.of(context).dividerColor),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => CreateNewPost(),
                                  ),
                                );
                              },
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  MaterialButton(
                                    onPressed: null,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.image,
                                          color: Colors.blue,
                                          size: 22,
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          AppLocalizations.of('Photo'),
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle2!
                                              .copyWith(fontSize: 15),
                                        ),
                                      ],
                                    ),
                                  ),
                                  MaterialButton(
                                    onPressed: null,
                                    child: Row(
                                      children: [
                                        Icon(
                                          FontAwesomeIcons.video,
                                          color: Color(0xff00b787),
                                          size: 19,
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          AppLocalizations.of('Video'),
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle2!
                                              .copyWith(fontSize: 15),
                                        ),
                                      ],
                                    ),
                                  ),
                                  MaterialButton(
                                    onPressed: null,
                                    child: Row(
                                      children: [
                                        Icon(
                                          FontAwesomeIcons.shoppingBag,
                                          color: Color(0xfff4651f),
                                          size: 19,
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          AppLocalizations.of('Products'),
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle2!
                                              .copyWith(fontSize: 15),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            NotificationListener<ScrollNotification>(
                              onNotification: (notification) {
                                return true;
                              },
                              child: Column(
                                children: [
                                  Divider(
                                      thickness: 9,
                                      height: 6,
                                      color: Theme.of(context).dividerColor),
                                  customeCard(
                                      'assets/Feature-Photo-Template-01.png',
                                      "Michael",
                                      "2 hours ago",
                                      "Coventry is a city with a thousand year",
                                      'assets/Feature-Photo-Template-01.png',
                                      "5756",
                                      "67",
                                      "18"),
                                  Divider(
                                      thickness: 9,
                                      height: 6,
                                      color: Theme.of(context).dividerColor),
                                  customeScrollCard(
                                      'assets/Feature-Photo-Template-03.png',
                                      "Jack Owen",
                                      "2 hours ago",
                                      "Coventry is a city with a thousand year",
                                      'assets/Feature-Photo-Template-03.png',
                                      "5756",
                                      "106",
                                      "32"),
                                  Divider(
                                      thickness: 9,
                                      height: 6,
                                      color: Theme.of(context).dividerColor),
                                  customeCard(
                                      'assets/Feature-Photo-Template-02.png',
                                      "Miranda",
                                      "2 hours ago",
                                      "Coventry is a city with a thousand year",
                                      'assets/Feature-Photo-Template-02.png',
                                      "5756",
                                      "54",
                                      "16"),
                                  Divider(
                                      thickness: 9,
                                      height: 6,
                                      color: Theme.of(context).dividerColor),
                                  customeCard(
                                      'assets/Feature-Photo-Template-03.png',
                                      "Jack Owen",
                                      "2 hours ago",
                                      "Coventry is a city with a thousand year",
                                      'assets/Feature-Photo-Template-03.png',
                                      "5756",
                                      "106",
                                      "32"),
                                  Divider(
                                      thickness: 9,
                                      height: 6,
                                      color: Theme.of(context).dividerColor),
                                  customeScrollCard(
                                      'assets/Feature-Photo-Template-03.png',
                                      "Jack Owen",
                                      "2 hours ago",
                                      "Coventry is a city with a thousand year",
                                      'assets/Feature-Photo-Template-03.png',
                                      "5756",
                                      "106",
                                      "32"),
                                  Divider(
                                      thickness: 9,
                                      height: 6,
                                      color: Theme.of(context).dividerColor),
                                  customeCard(
                                      'assets/Feature-Photo-Template-02.png',
                                      "Karly Chan",
                                      "2 hours ago",
                                      "Coventry is a city with a thousand year",
                                      'assets/Feature-Photo-Template-02.png',
                                      "5756",
                                      "48",
                                      "13"),
                                  Divider(
                                      thickness: 9,
                                      height: 6,
                                      color: Theme.of(context).dividerColor),
                                  customeScrollCard(
                                      'assets/Feature-Photo-Template-03.png',
                                      "Jack Owen",
                                      "2 hours ago",
                                      "Coventry is a city with a thousand year",
                                      'assets/Feature-Photo-Template-03.png',
                                      "5756",
                                      "106",
                                      "32"),
                                  Divider(
                                      thickness: 9,
                                      height: 6,
                                      color: Theme.of(context).dividerColor),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget customeCard(
    String img,
    String txt1,
    String txt2,
    String txt3,
    String img2,
    String share,
    String likes,
    String coment,
  ) {
    return Card(
      elevation: 0,
      clipBehavior: Clip.antiAlias,
      // shadowColor: Theme.of(context)eetextTheme.bodyText1!.color,
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 21,
                      backgroundImage: AssetImage(img),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppLocalizations.of(txt1),
                          style: Theme.of(context)
                              .textTheme
                              .headline1!
                              .copyWith(fontSize: 17),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          AppLocalizations.of(txt2),
                          style: Theme.of(context)
                              .textTheme
                              .subtitle2!
                              .copyWith(fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
                Icon(Icons.more_horiz)
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                AppLocalizations.of(txt3),
                style: Theme.of(context)
                    .textTheme
                    .headline1!
                    .copyWith(fontSize: 14),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image:
                    DecorationImage(image: AssetImage(img2), fit: BoxFit.cover),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LikeButton(
                  circleColor: CircleColor(
                    start: Theme.of(context).primaryColor,
                    end: Color(0xfff78361),
                  ),
                  bubblesColor: BubblesColor(
                    dotPrimaryColor: Theme.of(context).primaryColor,
                    dotSecondaryColor: Color(0xfff78361),
                  ),
                  likeBuilder: (bool isLiked) {
                    return Icon(
                      isLiked
                          ? FontAwesomeIcons.solidHeart
                          : FontAwesomeIcons.heart,
                      color: isLiked
                          ? Colors.red
                          : Theme.of(context).iconTheme.color,
                      size: 20,
                    );
                  },
                ),
                SizedBox(width: 1),
                Text(
                  likes,
                  style: Theme.of(context).textTheme.subtitle2!.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                SizedBox(width: 25),
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      builder: (context) {
                        return GestureDetector(
                          onTap: () => Navigator.of(context).pop(),
                          child: Container(
                            color: Color.fromRGBO(0, 0, 0, 0.001),
                            child: GestureDetector(
                              onTap: () {},
                              child: DraggableScrollableSheet(
                                initialChildSize: 0.4,
                                minChildSize: 0.2,
                                maxChildSize: 0.75,
                                builder: (_, controller) {
                                  return StatefulBuilder(builder:
                                      (BuildContext context,
                                          StateSetter setState) {
                                    return Container(
                                      decoration: BoxDecoration(
                                        color:
                                            Theme.of(context).backgroundColor,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(25.0),
                                          topRight: Radius.circular(25.0),
                                        ),
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(height: 6),
                                          SizedBox(
                                              width: 50,
                                              child: Divider(
                                                  thickness: 3.5,
                                                  height: 10,
                                                  color: Theme.of(context)
                                                      .dividerColor)),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 10),
                                            child: Text(
                                              AppLocalizations.of('Comment'),
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline1!
                                                  .copyWith(
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                          ),
                                          Divider(
                                              thickness: 0.8,
                                              height: 6,
                                              color: Theme.of(context)
                                                  .dividerColor),
                                          Expanded(
                                            child: ListView(
                                              controller: controller,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 15,
                                                  ),
                                                  child: Column(
                                                    children: [
                                                      Row(
                                                        children: [
                                                          DropdownButton<
                                                              String>(
                                                            value:
                                                                dropdownValue,
                                                            icon: Icon(Icons
                                                                .keyboard_arrow_down),
                                                            iconSize: 24,
                                                            elevation: 16,
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .headline1!
                                                                .copyWith(),
                                                            underline: Container(
                                                                height: 0,
                                                                color: Colors
                                                                    .transparent),
                                                            onChanged: (String?
                                                                newValue) {
                                                              setState(() {
                                                                dropdownValue =
                                                                    newValue!;
                                                              });
                                                            },
                                                            items: <String>[
                                                              AppLocalizations
                                                                  .of('Newest'),
                                                              AppLocalizations
                                                                  .of('Name'),
                                                              AppLocalizations
                                                                  .of('Time'),
                                                            ].map<
                                                                DropdownMenuItem<
                                                                    String>>((String
                                                                value) {
                                                              return DropdownMenuItem<
                                                                  String>(
                                                                value: value,
                                                                child:
                                                                    Text(value),
                                                              );
                                                            }).toList(),
                                                          ),
                                                        ],
                                                      ),
                                                      commentCard(
                                                          'assets/Feature-Photo-Template-03.png',
                                                          AppLocalizations.of(
                                                              "Jack Owen"),
                                                          "2 hours ago",
                                                          "Coventry is a city with a thousand year "),
                                                      commentCard(
                                                          'assets/Feature-Photo-Template-04.png',
                                                          AppLocalizations.of(
                                                              "Karly Chan"),
                                                          "2 hours ago",
                                                          "Coventry is a city with a thousand year "),
                                                      commentCard(
                                                          'assets/Feature-Photo-Template-01.png',
                                                          AppLocalizations.of(
                                                              "Michael"),
                                                          "2 hours ago",
                                                          "Coventry is a city with a thousand year"),
                                                      commentCard(
                                                        'assets/Feature-Photo-Template-02.png',
                                                        AppLocalizations.of(
                                                            "Miranda"),
                                                        "2 hours ago",
                                                        "Coventry is a city with a thousand year",
                                                      ),
                                                      commentCard(
                                                          'assets/Feature-Photo-Template-03.png',
                                                          AppLocalizations.of(
                                                              "Jack Owen"),
                                                          "2 hours ago",
                                                          "Coventry is a city with a thousand year"),
                                                      commentCard(
                                                          'assets/Feature-Photo-Template-04.png',
                                                          AppLocalizations.of(
                                                              "Karly Chan"),
                                                          "2 hours ago",
                                                          "Coventry is a city with a thousand year"),
                                                      commentCard(
                                                          'assets/Feature-Photo-Template-01.png',
                                                          AppLocalizations.of(
                                                              "Michael"),
                                                          "2 hours ago",
                                                          "Coventry is a city with a thousand year"),
                                                      commentCard(
                                                          'assets/Feature-Photo-Template-02.png',
                                                          AppLocalizations.of(
                                                              "Miranda"),
                                                          "2 hours ago",
                                                          "Coventry is a city with a thousand year"),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  });
                                },
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Icon(
                    FontAwesomeIcons.solidCommentDots,
                    size: 20,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  AppLocalizations.of(coment),
                  style: Theme.of(context).textTheme.subtitle2!.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Spacer(),
                InkWell(
                  onTap: () {
                    setState(() {
                      isBookmark = !isBookmark;
                    });
                  },
                  child: Icon(
                    isBookmark
                        ? FontAwesomeIcons.bookmark
                        : FontAwesomeIcons.solidBookmark,
                    size: 20,
                  ),
                ),
                SizedBox(width: 25),
                Icon(
                  FontAwesomeIcons.share,
                  size: 18,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget customeScrollCard(
    String img,
    String txt1,
    String txt2,
    String txt3,
    String img2,
    String share,
    String likes,
    String coment,
  ) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(13, 13, 13, 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 21,
                      backgroundImage: AssetImage(img),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppLocalizations.of(txt1),
                          style: Theme.of(context)
                              .textTheme
                              .headline1!
                              .copyWith(fontSize: 17),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          AppLocalizations.of(txt2),
                          style: Theme.of(context)
                              .textTheme
                              .subtitle2!
                              .copyWith(fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
                Icon(Icons.more_horiz)
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(13, 10, 13, 10),
            child: Text(
              AppLocalizations.of(txt3),
              style:
                  Theme.of(context).textTheme.headline1!.copyWith(fontSize: 14),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width,
            child: CarouselSlider(
              options: CarouselOptions(
                height: double.infinity,
                autoPlay: true,
                enlargeCenterPage: true,
                autoPlayInterval: Duration(seconds: 5),
                reverse: false,
                enableInfiniteScroll: false,
              ),
              items: [
                detailContainer(
                    'assets/pexels-photo-3018845.jpg',
                    'Caanael Cerest',
                    'Cameleon Makeup Kit',
                    '2.5k',
                    '11.4k',
                    '\$30.00',
                    Color(0xfff2a988)),
                detailContainer(
                  'assets/Fantasist Eyeshadow Palette_01.jpg',
                  'Caanael Cerest',
                  'Fantasist Eyeshadow Palette',
                  '4.6k',
                  '12.4k',
                  '\$24.00',
                  Color(0xffc47d69),
                ),
                detailContainer(
                    'assets/Decorative Stackable Plastic Makeup_02.jpg',
                    'Caanael Cerest',
                    'Decorative Stackable Plastic Makeup',
                    '3.7k',
                    '10.5k',
                    '\$36.00',
                    Color(0xffded9d5)),
                detailContainer(
                    'assets/New-Year-New-Makeup-Kit_04.jpg',
                    'Caanael Cerest',
                    'New Year New Makeup Kit',
                    '1.4k',
                    '9.2k',
                    '\$21.00',
                    Color(0xfffecdbe)),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(13, 10, 13, 13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LikeButton(
                  circleColor: CircleColor(
                    start: Theme.of(context).primaryColor,
                    end: Color(0xfff78361),
                  ),
                  bubblesColor: BubblesColor(
                    dotPrimaryColor: Theme.of(context).primaryColor,
                    dotSecondaryColor: Color(0xfff78361),
                  ),
                  likeBuilder: (bool isLiked) {
                    return Icon(
                      isLiked
                          ? FontAwesomeIcons.solidHeart
                          : FontAwesomeIcons.heart,
                      color: isLiked
                          ? Colors.red
                          : Theme.of(context).iconTheme.color,
                      size: 20,
                    );
                  },
                ),
                SizedBox(width: 1),
                Text(
                  AppLocalizations.of(likes),
                  style: Theme.of(context).textTheme.subtitle2!.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                SizedBox(width: 25),
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      builder: (context) {
                        return GestureDetector(
                          onTap: () => Navigator.of(context).pop(),
                          child: Container(
                            color: Color.fromRGBO(0, 0, 0, 0.001),
                            child: GestureDetector(
                              onTap: () {},
                              child: DraggableScrollableSheet(
                                initialChildSize: 0.4,
                                minChildSize: 0.2,
                                maxChildSize: 0.75,
                                builder: (_, controller) {
                                  return StatefulBuilder(builder:
                                      (BuildContext context,
                                          StateSetter setState) {
                                    return Container(
                                      decoration: BoxDecoration(
                                        color:
                                            Theme.of(context).backgroundColor,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(25.0),
                                          topRight: Radius.circular(25.0),
                                        ),
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(height: 6),
                                          SizedBox(
                                              width: 50,
                                              child: Divider(
                                                  thickness: 3.5,
                                                  height: 10,
                                                  color: Theme.of(context)
                                                      .dividerColor)),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 10),
                                            child: Text(
                                              AppLocalizations.of('Comment'),
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline1!
                                                  .copyWith(
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                          ),
                                          Divider(
                                              thickness: 0.8,
                                              height: 6,
                                              color: Theme.of(context)
                                                  .dividerColor),
                                          Expanded(
                                            child: ListView(
                                              controller: controller,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 15,
                                                  ),
                                                  child: Column(
                                                    children: [
                                                      Row(
                                                        children: [
                                                          DropdownButton<
                                                              String>(
                                                            value:
                                                                dropdownValue,
                                                            icon: Icon(Icons
                                                                .keyboard_arrow_down),
                                                            iconSize: 24,
                                                            elevation: 16,
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .headline1!
                                                                .copyWith(),
                                                            underline: Container(
                                                                height: 0,
                                                                color: Colors
                                                                    .transparent),
                                                            onChanged: (String?
                                                                newValue) {
                                                              setState(() {
                                                                dropdownValue =
                                                                    newValue!;
                                                              });
                                                            },
                                                            items: <String>[
                                                              AppLocalizations
                                                                  .of('Newest'),
                                                              AppLocalizations
                                                                  .of('Name'),
                                                              AppLocalizations
                                                                  .of('Time'),
                                                            ].map<
                                                                DropdownMenuItem<
                                                                    String>>((String
                                                                value) {
                                                              return DropdownMenuItem<
                                                                  String>(
                                                                value: value,
                                                                child:
                                                                    Text(value),
                                                              );
                                                            }).toList(),
                                                          ),
                                                        ],
                                                      ),
                                                      commentCard(
                                                          'assets/Feature-Photo-Template-03.png',
                                                          "Jack Owen",
                                                          "2 hours ago",
                                                          "Coventry is a city with a thousand year "),
                                                      commentCard(
                                                          'assets/Feature-Photo-Template-04.png',
                                                          "Karly Chan",
                                                          "2 hours ago",
                                                          "Coventry is a city with a thousand year "),
                                                      commentCard(
                                                          'assets/Feature-Photo-Template-01.png',
                                                          "Michael",
                                                          "2 hours ago",
                                                          "Coventry is a city with a thousand year"),
                                                      commentCard(
                                                        'assets/Feature-Photo-Template-02.png',
                                                        "Miranda",
                                                        "2 hours ago",
                                                        "Coventry is a city with a thousand year",
                                                      ),
                                                      commentCard(
                                                          'assets/Feature-Photo-Template-03.png',
                                                          "Jack Owen",
                                                          "2 hours ago",
                                                          "Coventry is a city with a thousand year"),
                                                      commentCard(
                                                          'assets/Feature-Photo-Template-04.png',
                                                          "Karly Chan",
                                                          "2 hours ago",
                                                          "Coventry is a city with a thousand year"),
                                                      commentCard(
                                                          'assets/Feature-Photo-Template-01.png',
                                                          "Michael",
                                                          "2 hours ago",
                                                          "Coventry is a city with a thousand year"),
                                                      commentCard(
                                                          'assets/Feature-Photo-Template-02.png',
                                                          "Miranda",
                                                          "2 hours ago",
                                                          "Coventry is a city with a thousand year"),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  });
                                },
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Icon(
                    FontAwesomeIcons.solidCommentDots,
                    size: 20,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  coment,
                  style: Theme.of(context).textTheme.subtitle2!.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Spacer(),
                InkWell(
                  onTap: () {
                    setState(() {
                      isBookmark = !isBookmark;
                    });
                  },
                  child: Icon(
                    isBookmark
                        ? FontAwesomeIcons.bookmark
                        : FontAwesomeIcons.solidBookmark,
                    size: 20,
                  ),
                ),
                SizedBox(width: 25),
                Icon(
                  FontAwesomeIcons.share,
                  size: 18,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget detailContainer(
    String img1,
    String name,
    String text1,
    String shoping,
    String view,
    String price,
    Color bgColor,
  ) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FullView(
              fullImage: img1,
              bgColor: bgColor,
            ),
          ),
        );
      },
      child: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image:
                  DecorationImage(image: AssetImage(img1), fit: BoxFit.cover),
            ),
          ),
          RibbonWidget(
            discount: '5',
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.all(7),
                padding: EdgeInsets.all(10),
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Theme.of(context).backgroundColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(name,
                        style: Theme.of(context)
                            .textTheme
                            .subtitle2!
                            .copyWith(fontSize: 12)),
                    Text(
                      text1,
                      style: Theme.of(context).textTheme.headline1!,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.shoppingCart,
                              color: Theme.of(context).primaryColor,
                              size: 13,
                            ),
                            SizedBox(width: 6),
                            Text(
                              shoping,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline1!
                                  .copyWith(fontSize: 14),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                              child: Text(AppLocalizations.of('•')),
                            ),
                            Icon(
                              Icons.remove_red_eye,
                              color: Theme.of(context).primaryColor,
                              size: 18,
                            ),
                            SizedBox(width: 6),
                            Text(
                              view,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline1!
                                  .copyWith(fontSize: 14),
                            ),
                          ],
                        ),
                        Text(
                          price,
                          style: Theme.of(context).textTheme.headline1!,
                        ),
                      ],
                    ),
                    SizedBox(),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget commentCard(
    String img,
    String txt1,
    String txt2,
    String txt3,
  ) {
    return Card(
      elevation: 0,
      clipBehavior: Clip.antiAlias,
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 21,
                    backgroundImage: AssetImage(img),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        txt1,
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 17),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        txt2,
                        style: Theme.of(context)
                            .textTheme
                            .subtitle2!
                            .copyWith(fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
              InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(10),
                child: Text(
                  AppLocalizations.of('Replay'),
                  style: Theme.of(context)
                      .textTheme
                      .headline1!
                      .copyWith(color: Theme.of(context).primaryColor),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10, top: 10, left: 50),
            child: Text(
              txt3,
              style:
                  Theme.of(context).textTheme.headline1!.copyWith(fontSize: 14),
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
