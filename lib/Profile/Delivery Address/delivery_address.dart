// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'new_address.dart';

class DeliveryAddress extends StatefulWidget {
  DeliveryAddress({Key? key}) : super(key: key);

  @override
  _DeliveryAddressState createState() => _DeliveryAddressState();
}

class _DeliveryAddressState extends State<DeliveryAddress> {
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
          'Delivery Address',
          style: TextStyle(color: Theme.of(context).iconTheme.color),
        ),
        elevation: 0,
      ),
      body: Container(
        color: Theme.of(context).dividerColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
              padding: EdgeInsets.all(15),
              color: Theme.of(context).scaffoldBackgroundColor,
              child: Column(
                children: [
                  deliveryBox(
                    'Home',
                    '680 Mowe Court, New York, US',
                    'Sophia Benson',
                    '+1(368)65 056 000',
                  ),
                  SizedBox(height: 15),
                  deliveryBox(
                    'Company',
                    '144 Ocian Novote New York, US',
                    'Sophia Benson',
                    '+1(368)65 056 000',
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                  15, 0, 15, MediaQuery.of(context).padding.bottom + 8),
              child: SizedBox(
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NewAddress(),
                      ),
                    );
                  },
                  child: Text(
                    'Add new Address',
                    style: Theme.of(context)
                        .textTheme
                        .headline1!
                        .copyWith(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget deliveryBox(String txt1, String txt2, String txt3, String txt4) {
    return Container(
      padding: EdgeInsets.fromLTRB(15, 9, 10, 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Theme.of(context).dividerColor,
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                txt1,
                style: TextStyle(color: Colors.grey, fontSize: 13),
              ),
              InkWell(
                onTap: () {
                  setState(() {});
                },
                child: Icon(
                  Icons.more_horiz,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Icon(
                Icons.location_on,
                color: Theme.of(context).primaryColor,
              ),
              SizedBox(width: 8),
              Text(
                txt2,
                style: Theme.of(context).textTheme.headline1,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(2, 12, 0, 13),
            child: Row(
              children: [
                Icon(
                  FontAwesomeIcons.solidUser,
                  color: Theme.of(context).primaryColor,
                  size: 18,
                ),
                SizedBox(width: 8),
                Text(
                  txt3,
                  style: Theme.of(context).textTheme.headline1,
                )
              ],
            ),
          ),
          Row(
            children: [
              SizedBox(width: 2),
              Icon(
                FontAwesomeIcons.phoneAlt,
                color: Theme.of(context).primaryColor,
                size: 18,
              ),
              SizedBox(width: 8),
              Text(
                txt4,
                style: Theme.of(context).textTheme.headline1,
              )
            ],
          ),
        ],
      ),
    );
  }
}
