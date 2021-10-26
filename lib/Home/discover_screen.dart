// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_app/Costome_widgets/common_widget.dart';
import 'package:flutter_app/Costome_widgets/ribbon_widget.dart';
import 'package:flutter_app/Language/appLocalizations.dart';
import 'package:flutter_app/Profile/My%20Order/my_order_tab.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:like_button/like_button.dart';

import 'full_screen_view.dart';

class DiscoverScreen extends StatefulWidget {
  DiscoverScreen({Key? key}) : super(key: key);

  @override
  _DiscoverScreenState createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 1,
          centerTitle: true,
          title: Text(
            AppLocalizations.of('Discover'),
            style: TextStyle(color: Theme.of(context).iconTheme.color),
          ),
          actionsIconTheme: IconThemeData(color: Colors.grey[500]),
          // ignore: prefer_const_literals_to_create_immutables
          actions: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyOrder(),
                  ),
                );
              },
              child: Icon(
                Icons.shopping_cart_outlined,
                size: 25,
              ),
            ),
            SizedBox(width: 15)
          ]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppLocalizations.of('Categories'),
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  Text(
                    AppLocalizations.of('View all'),
                    style: Theme.of(context)
                        .textTheme
                        .headline1!
                        .copyWith(color: Theme.of(context).primaryColor),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 15),
                  CategoriesBox(
                    'Haircare',
                    'assets/hair_care.jpg',
                  ),
                  CategoriesBox(
                    'Skin Care',
                    'assets/skin_care.jpg',
                  ),
                  CategoriesBox(
                    'Lip Stick',
                    "assets/caramel-kiss-4.jpeg",
                  ),
                  CategoriesBox(
                    'Nail',
                    'assets/nail.jpg',
                  ),
                  CategoriesBox(
                    'Haircare',
                    'assets/hair_care.jpg',
                  ),
                  CategoriesBox(
                    'Skin Care',
                    'assets/skin_care.jpg',
                  ),
                  CategoriesBox(
                    'Lip Stick',
                    "assets/caramel-kiss-4.jpeg",
                  ),
                  CategoriesBox(
                    'Nail',
                    'assets/nail.jpg',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppLocalizations.of('Recommened for you'),
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  Text(
                    AppLocalizations.of('View all'),
                    style: Theme.of(context)
                        .textTheme
                        .headline1!
                        .copyWith(color: Theme.of(context).primaryColor),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 15),
                  ribbonrecommenedYou(
                    'assets/71(1).png',
                    'Andora Skincare',
                    '24.00',
                    true,
                    Colors.white,
                  ),
                  ribbonrecommenedYou(
                    'assets/51D9zyL2PuL._SL1328_.jpg',
                    'Andora Skincare',
                    '24.00',
                    false,
                    Color(0xfff4f4f4),
                  ),
                  ribbonrecommenedYou(
                    'assets/1627402308-product-images2F54402Fimgs2FCREAM_SHADOW_PDP_FLASH_PRODUCT.jpg',
                    'Andora Skincare',
                    '24.00',
                    false,
                    Colors.white,
                  ),
                  ribbonrecommenedYou(
                    'assets/50977_1200x.jpg',
                    'Andora Skincare',
                    '24.00',
                    true,
                    Color(0xffd7d3d0),
                  ),
                  ribbonrecommenedYou(
                    'assets/Cameleon Makeup Kit_03.jpg',
                    'Andora Skincare',
                    '24.00',
                    true,
                    Colors.white,
                  ),
                  ribbonrecommenedYou(
                    'assets/1.jpg',
                    'Andora Skincare',
                    '24.00',
                    false,
                    Colors.white,
                  ),
                  ribbonrecommenedYou(
                    'assets/images (1).jpg',
                    'Andora Skincare',
                    '24.00',
                    true,
                    Color(0xffcccccc),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FullView(
                      fullImage: "assets/beautyproductssikncarerfxl.jpg",
                      bgColor: Color(0xff151723),
                    ),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(15, 20, 15, 5),
                width: double.infinity,
                height: 120,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "assets/beautyproductssikncarerfxl.jpg",
                    ),
                  ),
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppLocalizations.of("Valentine's Day"),
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  Text(
                    AppLocalizations.of('View all'),
                    style: Theme.of(context)
                        .textTheme
                        .headline1!
                        .copyWith(color: Theme.of(context).primaryColor),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 15),
                  ribbonrecommenedYou(
                    'assets/images (1).jpg',
                    'Andora Skincare',
                    '24.00',
                    false,
                    Color(0xffcccccc),
                  ),
                  ribbonrecommenedYou(
                    'assets/1.jpg',
                    'Andora Skincare',
                    '24.00',
                    true,
                    Colors.white,
                  ),
                  ribbonrecommenedYou(
                    'assets/50977_1200x.jpg',
                    'Andora Skincare',
                    '24.00',
                    false,
                    Color(0xffd7d3d0),
                  ),
                  ribbonrecommenedYou(
                    'assets/Fantasist Eyeshadow Palette_01.jpg',
                    'Andora Skincare',
                    '24.00',
                    true,
                    Color(0xffc47d69),
                  ),
                  ribbonrecommenedYou(
                    'assets/Fantasist Night Cream.png',
                    'Andora Skincare',
                    '24.00',
                    false,
                    Color(0xffffcfd1),
                  ),
                  ribbonrecommenedYou(
                    'assets/New-Year-New-Makeup-Kit_04.jpg',
                    'Andora Skincare',
                    '24.00',
                    true,
                    Color(0xfffecdbe),
                  ),
                  ribbonrecommenedYou(
                    'assets/Cameleon Makeup Kit_03.jpg',
                    'Andora Skincare',
                    '24.00',
                    true,
                    Colors.white,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
              child: Row(
                children: [
                  Text(
                    AppLocalizations.of("Popular Products"),
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CommonWidget.PopularProducts(
                  img: 'assets/pexels-photo-3018845.jpg',
                  name: 'Andora Skincare',
                  txt2: '524',
                  context: context,
                  ribbon: false,
                  shoping: true,
                  bgColor: Color(0xfff2a988),
                ),
                CommonWidget.PopularProducts(
                  img: 'assets/Decorative Stackable Plastic Makeup_02.jpg',
                  name: 'Skincare Besrie Globol',
                  txt2: '456',
                  context: context,
                  ribbon: false,
                  shoping: true,
                  bgColor: Color(0xffded9d5),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CommonWidget.PopularProducts(
                  img:
                      'assets/1627402308-product-images2F54402Fimgs2FCREAM_SHADOW_PDP_FLASH_PRODUCT.jpg',
                  name: 'Andora Skincare',
                  txt2: '524',
                  context: context,
                  ribbon: false,
                  shoping: true,
                  bgColor: Colors.white,
                ),
                CommonWidget.PopularProducts(
                  img: 'assets/50977_1200x.jpg',
                  name: 'Skincare Besrie Globol',
                  txt2: '456',
                  context: context,
                  ribbon: false,
                  shoping: true,
                  bgColor: Color(0xffd7d3d0),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CommonWidget.PopularProducts(
                  img: 'assets/images (1).jpg',
                  name: 'Andora Skincare',
                  txt2: '524',
                  context: context,
                  ribbon: false,
                  shoping: true,
                  bgColor: Color(0xffcccccc),
                ),
                CommonWidget.PopularProducts(
                  img: 'assets/51D9zyL2PuL._SL1328_.jpg',
                  name: 'Skincare Besrie Globol',
                  txt2: '456',
                  context: context,
                  ribbon: false,
                  shoping: true,
                  bgColor: Color(0xfff4f4f4),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CommonWidget.PopularProducts(
                  img: 'assets/1.jpg',
                  name: 'Andora Skincare',
                  txt2: '524',
                  context: context,
                  ribbon: false,
                  shoping: true,
                  bgColor: Colors.white,
                ),
                CommonWidget.PopularProducts(
                  img: 'assets/Fantasist Eyeshadow Palette_01.jpg',
                  name: 'Skincare Besrie Globol',
                  txt2: '456',
                  context: context,
                  ribbon: false,
                  shoping: true,
                  bgColor: Color(0xffc47d69),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget CategoriesBox(String txt1, String img) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
      child: Column(
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(img),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(13),
              // color: Colors.black26,
            ),
          ),
          SizedBox(height: 5),
          Text(
            AppLocalizations.of(txt1),
            style: TextStyle(color: Colors.grey, fontSize: 13),
          ),
        ],
      ),
    );
  }

  Widget ribbonrecommenedYou(
    String img,
    String name,
    String txt2,
    bool ribbon,
    Color bg_color,
  ) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FullView(
              fullImage: img,
              bgColor: bg_color,
            ),
          ),
        );
      },
      child: Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 125,
              width: 125,
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(18),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    img,
                  ),
                ),
              ),
              child: Stack(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ribbon
                          ? RibbonWidget(
                              discount: '5',
                            )
                          : SizedBox(),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 7, 8, 0),
                        height: 39,
                        width: 39,
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(3, 0, 0, 0),
                          child: LikeButton(
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
                                    : Theme.of(context).backgroundColor,
                                size: 20,
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Text(
              AppLocalizations.of("Chanel Cerest"),
              style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .copyWith(fontSize: 13, color: Colors.grey[700]),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 4, 0, 4),
              child: Text(
                AppLocalizations.of(name),
                style: Theme.of(context)
                    .textTheme
                    .headline1!
                    .copyWith(fontSize: 13),
              ),
            ),
            Text(
              AppLocalizations.of("\$$txt2"),
              style:
                  Theme.of(context).textTheme.headline1!.copyWith(fontSize: 13),
            ),
          ],
        ),
      ),
    );
  }
}
