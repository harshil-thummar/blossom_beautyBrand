// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_app/Language/appLocalizations.dart';
import 'package:flutter_app/Login/forgot_password.dart';
import 'package:intl/intl.dart';

enum SingingCharacter { light, dark }

class AccountInfo extends StatefulWidget {
  AccountInfo({Key? key}) : super(key: key);

  @override
  _AccountInfoState createState() => _AccountInfoState();
}

class _AccountInfoState extends State<AccountInfo> {
  SingingCharacter? _character = SingingCharacter.light;
  DateTime selectedDate = DateTime.now();

  final DateFormat dateFormat = DateFormat('dd-MM-yyyy');
  bool hidePass = true;

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
          'Account Information',
          style: TextStyle(
            color: Theme.of(context).iconTheme.color,
          ),
        ),
        elevation: 0,
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
          print('Click AccountInfo');
        },
        child: SingleChildScrollView(
            child: Stack(
          children: [
            Divider(
                thickness: 10,
                height: 10,
                color: Theme.of(context).dividerColor),
            Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 15),
                  Text(
                    'Full Name',
                    style: Theme.of(context).textTheme.subtitle2!.copyWith(
                          fontSize: 14,
                        ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 15, 0, 20),
                    child: SizedBox(
                      height: 50,
                      child: TextFormField(
                        style: Theme.of(context).textTheme.subtitle1!.copyWith(
                              fontSize: 18,
                            ),
                        keyboardType: TextInputType.multiline,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              borderSide: BorderSide(
                                  color: Theme.of(context).dividerColor)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Email',
                    style: Theme.of(context).textTheme.subtitle2!.copyWith(
                          fontSize: 14,
                        ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 15, 0, 20),
                    child: SizedBox(
                      height: 50,
                      child: TextFormField(
                        style: Theme.of(context).textTheme.subtitle1!.copyWith(
                              fontSize: 18,
                            ),
                        keyboardType: TextInputType.multiline,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              borderSide: BorderSide(
                                  color: Theme.of(context).dividerColor)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Date of Birth',
                    style: Theme.of(context).textTheme.subtitle2!.copyWith(
                          fontSize: 14,
                        ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 15, 0, 20),
                    child: SizedBox(
                      height: 50,
                      child: Center(
                        child: TextFormField(
                          readOnly: true,
                          style:
                              Theme.of(context).textTheme.subtitle1!.copyWith(
                                    fontSize: 16,
                                  ),
                          keyboardType: TextInputType.multiline,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                borderSide: BorderSide(
                                    color: Theme.of(context).dividerColor)),
                            labelStyle: TextStyle(fontSize: 16),
                            hintText: (dateFormat.format(selectedDate)),
                            hintStyle: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .headline1!
                                    .color),
                            suffixIcon: InkWell(
                                onTap: () async {
                                  final selectedDate =
                                      await _selectDateTime(context);
                                  if (selectedDate == null) return;
                                  print(selectedDate);
                                  setState(() {
                                    this.selectedDate = DateTime(
                                      selectedDate.year,
                                      selectedDate.month,
                                      selectedDate.day,
                                    );
                                  });
                                },
                                child: Icon(Icons.calendar_today)),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Passwrod',
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(
                              fontSize: 14,
                            ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ForgotPassword(),
                            ),
                          );
                        },
                        child: Text(
                          'Change Password',
                          style: Theme.of(context)
                              .textTheme
                              .headline1!
                              .copyWith(color: Theme.of(context).primaryColor),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 15, 0, 20),
                    child: SizedBox(
                      height: 50,
                      child: TextFormField(
                        obscureText: hidePass,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              borderSide: BorderSide(
                                  color: Theme.of(context).dividerColor)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(13),
                            ),
                          ),
                          suffixIcon: GestureDetector(
                            child: Icon(hidePass
                                ? Icons.visibility_off
                                : Icons.visibility),
                            onTap: () => {
                              setState(() => hidePass = !hidePass),
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Mostly Intersted',
                    style: Theme.of(context).textTheme.subtitle2!.copyWith(
                          fontSize: 14,
                        ),
                  ),
                  ListTile(
                    title: Text(
                      'Product for Womens',
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    leading: Radio<SingingCharacter>(
                      activeColor: Theme.of(context).primaryColor,
                      value: SingingCharacter.light,
                      groupValue: _character,
                      onChanged: (SingingCharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: Text(AppLocalizations.of('Product for Mens'),
                        style: Theme.of(context).textTheme.headline1),
                    leading: Radio<SingingCharacter>(
                      activeColor: Theme.of(context).primaryColor,
                      value: SingingCharacter.dark,
                      groupValue: _character,
                      onChanged: (
                        SingingCharacter? value,
                      ) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.width / 9),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Save Changes',
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
        )),
      ),
    );
  }

  Future<DateTime?> _selectDateTime(BuildContext context) => showDatePicker(
        context: context,
        initialDate: DateTime.now().add(Duration(seconds: 1)),
        firstDate: DateTime.now(),
        lastDate: DateTime(2100),
      );
}
