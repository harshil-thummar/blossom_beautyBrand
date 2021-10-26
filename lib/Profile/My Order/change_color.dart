
import 'package:flutter/material.dart';
import 'package:flutter_app/Language/appLocalizations.dart';
import 'package:flutter_app/constance/constance.dart';

class ChangeColor extends StatefulWidget {
  const ChangeColor({Key? key}) : super(key: key);

  @override
  _ChangeColorState createState() => _ChangeColorState();
}

class _ChangeColorState extends State<ChangeColor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 3,
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
          'Change Color',
          style: TextStyle(color: Theme.of(context).iconTheme.color),
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(ConstanceData.fullNightCream),
              ),
            ),
          ),
          Column(
            children: [
              Expanded(
                flex: 6,
                child: Container(),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.all(15),
                  padding: EdgeInsets.all(18),
                  decoration: BoxDecoration(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      borderRadius: BorderRadius.circular(25)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Caanael Cerest',
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1!
                            .copyWith(color: Colors.grey, fontSize: 13),
                      ),
                      SizedBox(height: 7),
                      Text(AppLocalizations.of('Fantasist Night Cream'),
                          style: Theme.of(context).textTheme.headline1!),
                      SizedBox(height: 8),
                      Text(AppLocalizations.of('\$24.00'),
                          style: Theme.of(context).textTheme.subtitle1!),
                      Spacer(),
                      Text(AppLocalizations.of('Color'),
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1!
                              .copyWith(color: Colors.grey, fontSize: 13)),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                              radius: MediaQuery.of(context).size.width / 20,
                              backgroundColor: Colors.blueAccent),
                          CircleAvatar(
                            radius: MediaQuery.of(context).size.width / 20,
                            backgroundColor: Colors.pinkAccent,
                            child: Icon(
                              Icons.check_outlined,
                              color: Colors.white,
                            ),
                          ),
                          CircleAvatar(
                              radius: MediaQuery.of(context).size.width / 20,
                              backgroundColor: Colors.orangeAccent),
                          CircleAvatar(
                              radius: MediaQuery.of(context).size.width / 20,
                              backgroundColor: Colors.redAccent),
                          CircleAvatar(
                              radius: MediaQuery.of(context).size.width / 20,
                              backgroundColor: Colors.transparent),
                          CircleAvatar(
                              radius: MediaQuery.of(context).size.width / 20,
                              backgroundColor: Colors.transparent),
                        ],
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: SizedBox(
                              height: 43,
                              child: MaterialButton(
                                child: Text(
                                  'Cancel  ',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline1!
                                      .copyWith(color: Colors.grey),
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: SizedBox(
                              height: 43,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  'Save',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline1!
                                      .copyWith(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
