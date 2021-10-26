
import 'package:flutter/material.dart';
import 'package:flutter_app/Language/appLocalizations.dart';

class BottomProduct extends StatefulWidget {
  const BottomProduct({Key? key}) : super(key: key);

  @override
  _BottomProductState createState() => _BottomProductState();
}

class _BottomProductState extends State<BottomProduct> {
  List<int> _selectedBox = [0, 1, 2];
  List<int> _unSelectedBox = [0, 1, 2, 3];
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
        print('Click BottomProduct');
      },
      child: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 50,
                      child: TextFormField(
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1!
                            .copyWith(fontSize: 18),
                        keyboardType: TextInputType.multiline,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              borderSide: BorderSide(
                                  color: Theme.of(context).dividerColor)),
                          prefixIcon: Icon(Icons.link),
                          hintText: AppLocalizations.of("Paste the product link here..."),
                          hintStyle: TextStyle(fontSize: 16),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      AppLocalizations.of(
                      'Selected Products'),
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1!
                          .copyWith(fontSize: 14, color: Colors.grey),
                    ),
                    SizedBox(height: 15),
                  ],
                ),
              ),
              SingleChildScrollView(
                padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (var i = 0; i < _selectedBox.length; i++)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                _selectedBox.remove(i);
                                _unSelectedBox.add(i);
                              });
                            },
                            child: Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                              height: 85,
                              width: 85,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                      'assets/New-Year-New-Makeup-Kit_04.jpg',
                                    ),
                                    fit: BoxFit.cover),
                                color: Colors.white12,
                                borderRadius: BorderRadius.circular(13),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(0, 7, 7, 0),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          height: 20,
                                          width: 20,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Theme.of(context)
                                                .scaffoldBackgroundColor,
                                          ),
                                          child: Center(
                                            child: Icon(
                                              Icons.close,
                                              size: 15,
                                              color: Theme.of(context)
                                                  .iconTheme
                                                  .color,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                            child: Text(AppLocalizations.of('Tanning'),
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .copyWith(
                                        fontSize: 13, color: Colors.grey)),
                          ),
                          Text(AppLocalizations.of(
                            'Night Cream'),
                            style: Theme.of(context)
                                .textTheme
                                .headline1!
                                .copyWith(fontSize: 14),
                          ),
                        ],
                      ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  'Your Fovourites',
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .copyWith(fontSize: 14, color: Colors.grey),
                ),
              ),
              SingleChildScrollView(
                padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (var u = 0; u < _unSelectedBox.length; u++)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                            height: 85,
                            width: 85,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    'assets/New-Year-New-Makeup-Kit_04.jpg',
                                  ),
                                  fit: BoxFit.cover),
                              color: Colors.white12,
                              borderRadius: BorderRadius.circular(13),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 7, 7, 0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      InkWell(
                                          onTap: () {
                                            setState(() {
                                              _selectedBox.add(u);
                                              _unSelectedBox.remove(u);
                                            });
                                          },
                                          child: Container(
                                            height: 20,
                                            width: 20,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.white70,
                                            ),
                                          )),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                            child: Text(
                              AppLocalizations.of(
                              'Tanning'),
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(fontSize: 13, color: Colors.grey),
                            ),
                          ),
                          Text(AppLocalizations.of(
                            'Night Cream'),
                            style: Theme.of(context)
                                .textTheme
                                .headline1!
                                .copyWith(fontSize: 14),
                          ),
                        ],
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
