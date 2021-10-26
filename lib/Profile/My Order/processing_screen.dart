// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_app/Costome_widgets/common_widget.dart';

class ProcessingScreen extends StatefulWidget {
  const ProcessingScreen({Key? key}) : super(key: key);

  @override
  _ProcessingScreenState createState() => _ProcessingScreenState();
}

class _ProcessingScreenState extends State<ProcessingScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).dividerColor,
      child: Stack(
        children: [
          ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Empty',
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          fontSize: 23,
                        ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 5, 0, 50),
                    child: Text(
                      'You have on order now!',
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(),
                    ),
                  ),
                  Image.asset(
                    "assets/Empty_Box.png",
                    height: 170,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width / 1.7,
                      height: 50,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Go To Discover',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline1!
                                  .copyWith(color: Colors.white),
                            ),
                            Icon(Icons.arrow_forward_rounded)
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 235,
                width: double.infinity,
                color: Theme.of(context).scaffoldBackgroundColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Maybe you like',
                            style: Theme.of(context).textTheme.headline1!,
                          ),
                          Text(
                            'View all',
                            style:
                                Theme.of(context).textTheme.headline1!.copyWith(
                                      color: Theme.of(context).primaryColor,
                                    ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          SizedBox(width: 15),
                          CommonWidget.ProductBox(
                              name: 'Andora Skincare',
                              img: 'assets/images (1).jpg',
                              context: context,
                              bg_color: Color(0xffcccccc)),
                          SizedBox(width: 15),
                          CommonWidget.ProductBox(
                              name: 'Andora Skincare',
                              img: 'assets/MakeUp01.png',
                              context: context,
                              bg_color: Colors.white),
                          SizedBox(width: 15),
                          CommonWidget.ProductBox(
                              name: 'Andora Skincare',
                              img: 'assets/71(1).png',
                              context: context,
                              bg_color: Colors.white),
                          SizedBox(width: 15),
                          CommonWidget.ProductBox(
                              name: 'Andora Skincare',
                              img: 'assets/51D9zyL2PuL._SL1328_.jpg',
                              context: context,
                              bg_color: Colors.white),
                          SizedBox(width: 15),
                          CommonWidget.ProductBox(
                              name: 'Andora Skincare',
                              img:
                                  'assets/1627402308-product-images2F54402Fimgs2FCREAM_SHADOW_PDP_FLASH_PRODUCT.jpg',
                              context: context,
                              bg_color: Colors.white),
                          SizedBox(width: 15),
                          CommonWidget.ProductBox(
                              name: 'Andora Skincare',
                              img: 'assets/50977_1200x.jpg',
                              context: context,
                              bg_color: Color(0xffd7d3d0)),
                          SizedBox(width: 15),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
