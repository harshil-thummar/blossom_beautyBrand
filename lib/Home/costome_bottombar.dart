// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'discover_screen.dart';
import 'favorite_screen.dart';
import 'home_screen.dart';
import 'profile.dart';
import 'search_screen.dart';


class CostomeBottomBar extends StatefulWidget {
  CostomeBottomBar({Key? key}) : super(key: key);

  @override
  _CostomeBottomBarState createState() => _CostomeBottomBarState();
}

class _CostomeBottomBarState extends State<CostomeBottomBar> {
  int currentIndex = 0;

  List<Widget> currentPage = [
    HomeScreen(),
    SearchScreen(),
    DiscoverScreen(),
    FavoriteScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentPage[currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
          boxShadow: [
            BoxShadow(
              blurRadius: 5,
              spreadRadius: 2,
              color: Theme.of(context).dividerColor,
            )
          ],
        ),
        height: MediaQuery.of(context).padding.bottom + 55,
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.only(bottom: 0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () => setState(() => currentIndex = 0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 5,
                  height: double.infinity,
                  child: Icon(
                    currentIndex == 0
                        ? FontAwesomeIcons.solidListAlt
                        : FontAwesomeIcons.listAlt,
                    color: currentIndex == 0
                        ? Theme.of(context).primaryColor
                        : Theme.of(context).iconTheme.color,
                    size: 26,
                  ),
                ),
              ),
              InkWell(
                onTap: () => setState(() => currentIndex = 1),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 5,
                  height: double.infinity,
                  child: Icon(
                    currentIndex == 1
                        ? FontAwesomeIcons.search
                        : FontAwesomeIcons.search,
                    color: currentIndex == 1
                        ? Theme.of(context).primaryColor
                        : Theme.of(context).iconTheme.color,
                    size: 25,
                  ),
                ),
              ),
              InkWell(
                onTap: () => setState(() => currentIndex = 2),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 5,
                  height: double.infinity,
                  child: Icon(
                    currentIndex == 2
                        ? FontAwesomeIcons.solidCompass
                        : FontAwesomeIcons.compass,
                    color: currentIndex == 2
                        ? Theme.of(context).primaryColor
                        : Theme.of(context).iconTheme.color,
                    size: 26,
                  ),
                ),
              ),
              InkWell(
                onTap: () => setState(() => currentIndex = 3),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 5,
                  height: double.infinity,
                  child: Icon(
                    currentIndex == 3 ? Icons.favorite : Icons.favorite_border,
                    color: currentIndex == 3
                        ? Theme.of(context).primaryColor
                        : Theme.of(context).iconTheme.color,
                    size: 29,
                  ),
                ),
              ),
              InkWell(
                onTap: () => setState(() => currentIndex = 4),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 5,
                  height: double.infinity,
                  child: Icon(
                    currentIndex == 4
                        ? FontAwesomeIcons.solidUser
                        : FontAwesomeIcons.user,
                    color: currentIndex == 4
                        ? Theme.of(context).primaryColor
                        : Theme.of(context).iconTheme.color,
                    size: 25,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
