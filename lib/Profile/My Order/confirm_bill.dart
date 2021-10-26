
import 'package:flutter/material.dart';
import 'package:flutter_app/Language/appLocalizations.dart';
import 'package:flutter_app/Profile/Delivery%20Address/delivery_address.dart';
import 'package:flutter_app/constance/constance.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../payment_method.dart';

class ConfirmBill extends StatefulWidget {
  const ConfirmBill({Key? key}) : super(key: key);

  @override
  _ConfirmBillState createState() => _ConfirmBillState();
}

class _ConfirmBillState extends State<ConfirmBill> {
  bool _selectPaymentBox = true;
  bool _orderTileExpanded = true;
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
        elevation: 0,
        title: Text(AppLocalizations.of('Confirm Bill')),
      ),
      body: ListView(
        padding: EdgeInsets.all(0),
        children: [
          Divider(thickness: 0.7, color: Theme.of(context).dividerColor),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Delivery Address',
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DeliveryAddress()),
                        );
                      },
                      child: Text(
                        'Change',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Text(
                  'Home',
                  style: TextStyle(color: Colors.grey, fontSize: 13),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Theme.of(context).primaryColor,
                    ),
                    SizedBox(width: 8),
                    Text(
                      '680 Mowe Court, New York, US',
                      style: Theme.of(context).textTheme.headline1,
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(2, 12, 0, 13),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            FontAwesomeIcons.solidUser,
                            color: Theme.of(context).primaryColor,
                            size: 18,
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Sophia Benson',
                            style: Theme.of(context).textTheme.headline1,
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DeliveryAddress()),
                          );
                        },
                        child: Icon(
                          Icons.arrow_forward_ios,
                          size: 14,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(3, 0, 0, 5),
                  child: Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.phoneAlt,
                        color: Theme.of(context).primaryColor,
                        size: 18,
                      ),
                      SizedBox(width: 8),
                      Text(
                        '+1(368)65 056 000',
                        style: Theme.of(context).textTheme.headline1,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(
              thickness: 0.7, height: 0, color: Theme.of(context).dividerColor),
          Column(
            children: [
              ExpansionTile(
                initiallyExpanded: true,
                title: Text(AppLocalizations.of('Order Bill'),
                    style: Theme.of(context).textTheme.headline1),
                trailing: RotatedBox(
                  quarterTurns: _orderTileExpanded ? 3 : 1,
                  child: Icon(Icons.arrow_forward_ios_rounded,
                      size: 15, color: Theme.of(context).iconTheme.color),
                ),
                onExpansionChanged: (bool expanded) {
                  setState(() => _orderTileExpanded = expanded);
                },
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Product',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13),
                            ),
                            Text(
                              '3 items',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline1!
                                  .copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w100),
                            )
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Price',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13),
                            ),
                            Text(
                              '\$72.00',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline1!
                                  .copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w100),
                            )
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Shipping Fee',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13),
                            ),
                            Text(
                              '\$12.00',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline1!
                                  .copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w100),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Have A promo code?',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .copyWith(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 13,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              '\$10.00',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline1!
                                  .copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w100),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Total Bill',
                                style: Theme.of(context).textTheme.headline1,
                              ),
                              Text(
                                '\$74.00',
                                style: Theme.of(context).textTheme.headline1!,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Divider(
                  thickness: 0.7,
                  height: 0,
                  color: Theme.of(context).dividerColor),
              Container(
                margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                padding: EdgeInsets.all(15),
                color: Theme.of(context).scaffoldBackgroundColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(AppLocalizations.of('Payment Method'),
                            style: Theme.of(context).textTheme.headline1!),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PaymentMethod(),
                              ),
                            );
                          },
                          child: Text(AppLocalizations.of('Add new'),
                              style: Theme.of(context)
                                  .textTheme
                                  .headline1!
                                  .copyWith(
                                      color: Theme.of(context).primaryColor)),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    InkWell(
                      onTap: () {
                        setState(() {
                          _selectPaymentBox = !_selectPaymentBox;
                        });
                      },
                      child: paymentBox(
                        ConstanceData.visaLogo,
                        '486',
                        _selectPaymentBox ? true : false,
                      ),
                    ),
                    SizedBox(height: 15),
                    InkWell(
                      onTap: () {
                        setState(() {
                          _selectPaymentBox = !_selectPaymentBox;
                        });
                      },
                      child: paymentBox(
                        ConstanceData.mastercardLogo,
                        '618',
                        _selectPaymentBox ? false : true,
                      ),
                    ),
                    SizedBox(height: 30),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
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
                        child: Text(
                          'Complete',
                          style: Theme.of(context)
                              .textTheme
                              .headline1!
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
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
            style:
                Theme.of(context).textTheme.headline1!.copyWith(fontSize: 25),
          ),
          Text(
            txt1,
            style:
                Theme.of(context).textTheme.headline1!.copyWith(fontSize: 18),
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
