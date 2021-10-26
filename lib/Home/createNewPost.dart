import 'package:flutter/material.dart';
import 'package:flutter_app/Costome_widgets/Costome_Bottom_Sheet/costome_bottom_sheet.dart';
import 'package:flutter_app/Language/appLocalizations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'bottom_product.dart';

class CreateNewPost extends StatefulWidget {
  const CreateNewPost({Key? key}) : super(key: key);

  @override
  _CreateNewPostState createState() => _CreateNewPostState();
}

class _CreateNewPostState extends State<CreateNewPost>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.close,
            color: Theme.of(context).iconTheme.color,
          ),
        ),
        title: Text(
          AppLocalizations.of('Create New Post'),
          style: TextStyle(color: Theme.of(context).iconTheme.color),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
            child: Center(
              child: Text(
                AppLocalizations.of('Post'),
                style: Theme.of(context)
                    .textTheme
                    .headline1!
                    .copyWith(color: Theme.of(context).primaryColor),
              ),
            ),
          )
        ],
        elevation: 2,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(),
                      SizedBox(width: 15),
                      Text(
                        AppLocalizations.of('Sophia Doyle'),
                        style: Theme.of(context).textTheme.headline1,
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    maxLines: 20,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                      hintText: AppLocalizations.of(
                          'Have something to share with the community?'),
                      border: InputBorder.none,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SlidingUpPanel(
            color: Theme.of(context).scaffoldBackgroundColor,
            // defaultPanelState: PanelState.OPEN,
            maxHeight: MediaQuery.of(context).size.height / 1.5,
            minHeight: 80,
            borderRadius: BorderRadius.horizontal(
              left: Radius.circular(15),
              right: Radius.circular(15),
            ),
            panel: Column(
              children: [
                SizedBox(height: 5),
                SizedBox(
                  width: 50,
                  child: Divider(
                      thickness: 3.5,
                      height: 10,
                      color: Theme.of(context).dividerColor),
                ),
                TabBar(
                  enableFeedback: true,
                  controller: _tabController,
                  tabs: [
                    Tab(
                      text: 'Photo',
                      icon: Icon(
                        Icons.image,
                        color: Colors.blue,
                        size: 22,
                      ),
                    ),
                    Tab(
                      text: 'Video',
                      icon: Icon(
                        FontAwesomeIcons.video,
                        color: Color(0xff00b787),
                        size: 19,
                      ),
                    ),
                    Tab(
                      text: 'Products',
                      icon: Icon(
                        FontAwesomeIcons.shoppingBag,
                        color: Theme.of(context).primaryColor,
                        size: 19,
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      BottomProduct(),
                      BottomProduct(),
                      BottomProduct(),
                    ],
                  ),
                ),
                Divider(
                    thickness: 0.8,
                    height: 6,
                    color: Theme.of(context).dividerColor),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
