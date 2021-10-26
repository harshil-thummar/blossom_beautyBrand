// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_app/Language/appLocalizations.dart';

class RibbonWidget extends StatefulWidget {
  final String discount;

  RibbonWidget({required this.discount});

  @override
  _RibbonWidgetState createState() => _RibbonWidgetState();
}

class _RibbonWidgetState extends State<RibbonWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 17),
      child: Stack(
        children: <Widget>[
          RotatedBox(
            quarterTurns: 1,
            child: Container(
              child: ClipPath(
                clipper: ArcClipper(),
                child: Container(
                  width: 43,
                  height: 33,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(3), bottomRight: Radius.circular(3)),
                    color: Colors.pinkAccent,
                  ),
                  child: Center(
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Container(
                          child: Text(
                            AppLocalizations.of("-${widget.discount}%"),
                            style: Theme.of(context).textTheme.headline1!.copyWith(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ArcClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width - 12, size.height / 2);
    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, 0.0);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
