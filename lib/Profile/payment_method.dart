// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_app/Language/appLocalizations.dart';
import 'package:flutter_app/constance/constance.dart';

class PaymentMethod extends StatefulWidget {
  PaymentMethod({Key? key}) : super(key: key);

  @override
  _PaymentMethodState createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  // ignore: non_constant_identifier_names
  bool payment_method = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Theme.of(context).iconTheme.color,
          ),
        ),
        title: Text(
          'Payment Method',
          style: TextStyle(color: Theme.of(context).iconTheme.color),
        ),
        elevation: 0,
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
          print('Click PaymentMethod');
        },
        child: Stack(
          children: [
            Container(
              color: Theme.of(context).dividerColor,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                payment_method
                    ? Center(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 35, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Don't have a",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline1!
                                    .copyWith(fontWeight: FontWeight.w700, color: Color(0xff808d9e), letterSpacing: 0.5, fontSize: 24),
                              ),
                              Text(
                                "Payment method",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline1!
                                    .copyWith(fontWeight: FontWeight.w700, color: Color(0xff808d9e), letterSpacing: 0.5, fontSize: 24),
                              ),
                              SizedBox(height: 10),
                              Text(AppLocalizations.of('Please create a new payment method'),
                                  style: Theme.of(context).textTheme.headline1!.copyWith(
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff808d9e),
                                      )),
                              SizedBox(height: 40),
                              Image.asset(
                                ConstanceData.emptyIcon,
                                height: 130,
                              ),
                            ],
                          ),
                        ),
                      )
                    : Container(
                        margin: EdgeInsets.fromLTRB(0, 13, 0, 0),
                        padding: EdgeInsets.all(15),
                        color: Theme.of(context).scaffoldBackgroundColor,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(AppLocalizations.of('My Payment Method'), style: Theme.of(context).textTheme.headline1!),
                            SizedBox(height: 15),
                            paymentBox(
                              ConstanceData.visaLogo,
                              '486',
                              true,
                            ),
                            SizedBox(height: 15),
                            paymentBox(
                              ConstanceData.mastercardLogo,
                              '618',
                              false,
                            ),
                          ],
                        ),
                      ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).padding.bottom + 14,
                    left: 14,
                    right: 14,
                    top: 14,
                  ),
                  color: Theme.of(context).scaffoldBackgroundColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Add new Payment Method"),
                      SizedBox(height: 15),
                      Container(
                        padding: EdgeInsets.all(6),
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            17,
                          ),
                          border: Border.all(color: Theme.of(context).dividerColor),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 55,
                              height: MediaQuery.of(context).size.height,
                              decoration: BoxDecoration(
                                color: Theme.of(context).scaffoldBackgroundColor,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4,
                                    spreadRadius: 1,
                                    offset: Offset.fromDirection(9.9),
                                    color: Theme.of(context).dividerColor,
                                  )
                                ],
                                image: DecorationImage(
                                    fit: BoxFit.fitHeight,
                                    image: AssetImage(
                                      ConstanceData.mastercardLogo,
                                    )),
                                borderRadius: BorderRadius.circular(
                                  15,
                                ),
                                border: Border.all(color: Theme.of(context).dividerColor),
                              ),
                            ),
                            SizedBox(width: 13),
                            Expanded(
                              child: Row(
                                children: [
                                  Text(
                                    'Master card',
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Colors.grey,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      SizedBox(
                        height: 50,
                        child: TextFormField(
                          style: Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: 18),
                          keyboardType: TextInputType.multiline,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              borderSide: BorderSide(color: Theme.of(context).dividerColor),
                            ),
                            labelText: 'Card number',
                            labelStyle: TextStyle(fontSize: 16, color: Colors.grey),
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
                        children: [
                          Expanded(
                            flex: 5,
                            child: Container(
                              padding: EdgeInsets.all(10),
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                  color: Theme.of(context).dividerColor,
                                ),
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    'Valid thru',
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Colors.grey,
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 15),
                          Expanded(
                            flex: 5,
                            child: SizedBox(
                              height: 50,
                              child: TextFormField(
                                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                                      fontSize: 18,
                                    ),
                                keyboardType: TextInputType.multiline,
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(15)),
                                    borderSide: BorderSide(color: Theme.of(context).dividerColor),
                                  ),
                                  labelText: 'Card number',
                                  labelStyle: TextStyle(fontSize: 16, color: Colors.grey),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                      SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(13),
                              ),
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              payment_method = !payment_method;
                            });
                          },
                          child: Text(
                            'Add new Payment',
                            style: Theme.of(context).textTheme.headline1!.copyWith(color: Colors.white),
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
    );
  }

  Widget paymentBox(String img, String txt1, bool right) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 63,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            17,
          ),
          border: Border.all(color: Theme.of(context).dividerColor)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 55,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              boxShadow: [
                BoxShadow(
                  blurRadius: 4,
                  spreadRadius: 1,
                  offset: Offset.fromDirection(9.9),
                  color: Theme.of(context).dividerColor,
                )
              ],
              image: DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: AssetImage(
                    img,
                  )),
              borderRadius: BorderRadius.circular(
                15,
              ),
              border: Border.all(color: Theme.of(context).dividerColor),
            ),
          ),
          SizedBox(width: 15),
          Text(
            '•••• •••• •••• •',
            style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 25),
          ),
          Text(
            txt1,
            style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 18),
          ),
          Spacer(),
          InkWell(
            onTap: () {
              setState(() {
                right = !right;
              });
            },
            child: right
                ? Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).primaryColor,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.check_outlined,
                        size: 14,
                        color: Theme.of(context).scaffoldBackgroundColor,
                      ),
                    ),
                  )
                : SizedBox(),
          ),
        ],
      ),
    );
  }
}
