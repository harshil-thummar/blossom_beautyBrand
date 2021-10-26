// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:flutter_app/Home/full_screen_view.dart';
import 'package:flutter_app/Language/appLocalizations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:like_button/like_button.dart';

import 'ribbon_widget.dart';

class CommonWidget {
  static Widget ProductBox(
      {required String name,
      required String img,
      required Color bg_color,
      required BuildContext context}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
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
          child: Container(
            height: 125,
            width: 125,
            decoration: BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.circular(18),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "$img",
                ),
              ),
            ),
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 7, 8, 7),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
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
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 4, 0, 5),
          child: Text(
            AppLocalizations.of("Chanel Cerest"),
            style:
                Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: 13),
          ),
        ),
        Text(
          "$name",
          style: Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: 13),
        ),
      ],
    );
  }

  static Widget SuggestionBox({
    required String txt1,
    required String txt2,
    required String txt3,
    required String cart,
    required String view,
    required String img,
    required Color bg_color,
    required BuildContext context,
  }) {
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
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 105,
            width: 105,
            decoration: BoxDecoration(
              color: Colors.white10,
              borderRadius: BorderRadius.circular(18),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "$img",
                ),
              ),
            ),
          ),
          SizedBox(width: 15),
          SizedBox(
            height: 95,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$txt1',
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .copyWith(fontSize: 14, color: Colors.grey),
                ),
                Text(AppLocalizations.of('$txt2'), style: Theme.of(context).textTheme.headline1!),
                Text("\$$txt3", style: Theme.of(context).textTheme.headline1!),
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
                          "$cart",
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
                          "$view",
                          style: Theme.of(context)
                              .textTheme
                              .headline1!
                              .copyWith(fontSize: 14),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  static Widget PopularProducts({
    required String img,
    required String name,
    required String txt2,
    required bool ribbon,
    required bool shoping,
    required Color bgColor,
    required BuildContext context,
  }) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FullView(
              fullImage: img,
              bgColor: bgColor,
            ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 165,
              width: 165,
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
                      ribbon ? RibbonWidget(discount: '5') : SizedBox(),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 7, 8, 0),
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(2, 0, 0, 0),
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
                              return shoping
                                  ? Icon(
                                      isLiked
                                          ? FontAwesomeIcons.solidHeart
                                          : FontAwesomeIcons.heart,
                                      color: isLiked
                                          ? Colors.red
                                          : Theme.of(context).backgroundColor,
                                      size: 18,
                                    )
                                  : Icon(
                                      isLiked
                                          ? FontAwesomeIcons.heart
                                          : FontAwesomeIcons.solidHeart,
                                      color: isLiked
                                          ? Theme.of(context).backgroundColor
                                          : Colors.red,
                                      size: 18,
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
            SizedBox(height: 8),
            Text(
              AppLocalizations.of("Chanel Cerest"),
              style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .copyWith(fontSize: 12, color: Colors.grey[700]),
            ),
            SizedBox(height: 5),
            Text(
              AppLocalizations.of(name),
              style:
                  Theme.of(context).textTheme.headline1!.copyWith(fontSize: 13),
            ),
            shoping
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 5),
                      Text(
                        AppLocalizations.of("\$$txt2"),
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 13),
                      ),
                    ],
                  )
                : SizedBox(),
            shoping
                ? Padding(
                    padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                    child: Row(
                      children: [
                        Icon(
                          FontAwesomeIcons.shoppingCart,
                          color: Theme.of(context).primaryColor,
                          size: 11,
                        ),
                        SizedBox(width: 6),
                        Text(
                          AppLocalizations.of('4.6k'),
                          style: Theme.of(context)
                              .textTheme
                              .headline1!
                              .copyWith(fontSize: 12),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                          child: Text(AppLocalizations.of('•'),
                              style: TextStyle(color: Colors.grey)),
                        ),
                        Icon(
                          Icons.remove_red_eye,
                          color: Theme.of(context).primaryColor,
                          size: 15,
                        ),
                        SizedBox(width: 6),
                        Text(
                          AppLocalizations.of('12.4k'),
                          style: Theme.of(context)
                              .textTheme
                              .headline1!
                              .copyWith(fontSize: 12),
                        ),
                      ],
                    ),
                  )
                : SizedBox(),
          ],
        ),
      ),
    );
  }
}
