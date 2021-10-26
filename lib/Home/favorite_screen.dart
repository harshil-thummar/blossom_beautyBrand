// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_constructors_in_immutables


import 'package:flutter/material.dart';
import 'package:flutter_app/Costome_widgets/common_widget.dart';
import 'package:flutter_app/Language/appLocalizations.dart';
import 'package:flutter_app/Profile/My%20Order/my_order_tab.dart';

class FavoriteScreen extends StatefulWidget {
  FavoriteScreen({Key? key}) : super(key: key);

  @override
  _FavoriteScreenState createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  List<int> lstintA = [1, 3];
  List<int> lstintB = [2, 4];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 1,
          centerTitle: true,
          title: Text(AppLocalizations.of(
            'Favorite'),
            style: TextStyle(color: Theme.of(context).iconTheme.color),
          ),
          actionsIconTheme: IconThemeData(color: Colors.grey[500]),
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
      body: ListView(
        children: [
          Column(
            children: [
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
                    shoping: false,
                    bgColor: Colors.white,
                  ),
                  CommonWidget.PopularProducts(
                    img: 'assets/50977_1200x.jpg',
                    name: 'Skincare Besrie Globol',
                    txt2: '456',
                    context: context,
                    ribbon: true,
                    shoping: false,
                    bgColor: Color(0xffd7d3d0),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CommonWidget.PopularProducts(
                    img: 'assets/Decorative Stackable Plastic Makeup_02.jpg',
                    name: 'Skincare Besrie Globol',
                    txt2: '456',
                    context: context,
                    ribbon: false,
                    shoping: false,
                    bgColor: Color(0xffded9d5),
                  ),
                  CommonWidget.PopularProducts(
                    img: 'assets/pexels-photo-3018845.jpg',
                    name: 'Andora Skincare',
                    txt2: '524',
                    context: context,
                    ribbon: false,
                    shoping: false,
                    bgColor: Color(0xfff2a988),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CommonWidget.PopularProducts(
                    img: 'assets/51D9zyL2PuL._SL1328_.jpg',
                    name: 'Skincare Besrie Globol',
                    txt2: '456',
                    context: context,
                    ribbon: false,
                    shoping: false,
                    bgColor: Color(0xfff4f4f4),
                  ),
                  CommonWidget.PopularProducts(
                    img: 'assets/images (1).jpg',
                    name: 'Andora Skincare',
                    txt2: '524',
                    context: context,
                    ribbon: false,
                    shoping: false,
                    bgColor: Color(0xffcccccc),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CommonWidget.PopularProducts(
                    img: 'assets/Fantasist Eyeshadow Palette_01.jpg',
                    name: 'Skincare Besrie Globol',
                    txt2: '456',
                    context: context,
                    ribbon: true,
                    shoping: false,
                    bgColor: Color(0xffc47d69),
                  ),
                  CommonWidget.PopularProducts(
                    img: 'assets/1.jpg',
                    name: 'Andora Skincare',
                    txt2: '524',
                    context: context,
                    ribbon: false,
                    shoping: false,
                    bgColor: Colors.white,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CommonWidget.PopularProducts(
                    img: 'assets/MakeUp01.png',
                    name: 'Andora Skincare',
                    txt2: '524',
                    context: context,
                    ribbon: false,
                    shoping: false,
                    bgColor: Colors.white,
                  ),
                  CommonWidget.PopularProducts(
                    img: 'assets/1.png',
                    name: 'Skincare Besrie Globol',
                    txt2: '456',
                    context: context,
                    ribbon: true,
                    shoping: false,
                    bgColor: Color(0xffa28d6b),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
