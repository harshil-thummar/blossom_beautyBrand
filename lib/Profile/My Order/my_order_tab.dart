// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'processing_screen.dart';
import 'shipped_screen.dart';
import 'unpaid_screen.dart';

class MyOrder extends StatefulWidget {
  MyOrder({Key? key}) : super(key: key);

  @override
  _MyOrderState createState() => _MyOrderState();
}

class _MyOrderState extends State<MyOrder> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              elevation: 2,
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
                'My Order',
                style: TextStyle(color: Theme.of(context).iconTheme.color),
              ),
              pinned: true,
              floating: true,
              forceElevated: innerBoxIsScrolled,
              bottom: TabBar(
                unselectedLabelColor: Theme.of(context).iconTheme.color,
                labelColor: Theme.of(context).primaryColor,
                labelStyle: Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: 16),
                tabs: <Tab>[
                  Tab(
                    text: 'Unpaid',
                  ),
                  Tab(text: 'Processing'),
                  Tab(text: 'Shipped'),
                ],
                controller: _tabController,
              ),
            ),
          ];
        },
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            UnpaidScreen(),
            ProcessingScreen(),
            ShippedScreen(),
          ],
        ),
      ),
    );
  }
}
