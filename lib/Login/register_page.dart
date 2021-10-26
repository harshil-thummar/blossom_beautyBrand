// ignore_for_file: avoid_print, prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../main.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  DateTime selectedDate = DateTime.now();

  final DateFormat dateFormat = DateFormat('dd-MM-yyyy');

  bool hidePass = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
          print('click RegisterScreen');
        },
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                    ),
                  ),
                  SizedBox(height: 28),
                  Text(
                    'Create new\nAccount',
                    style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 33),
                  ),
                  SizedBox(height: 20),
                  Text('Please type full infomation below and\nwe can create your account', style: Theme.of(context).textTheme.subtitle2!),
                  SizedBox(height: 30),
                  SizedBox(
                    height: 50,
                    child: TextFormField(
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            fontSize: 18,
                          ),
                      keyboardType: TextInputType.multiline,
                      decoration: InputDecoration(
                        labelText: 'Full Name',
                        labelStyle: TextStyle(fontSize: 16),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)), borderSide: BorderSide(color: Theme.of(context).dividerColor)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 50,
                    child: TextFormField(
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            fontSize: 18,
                          ),
                      keyboardType: TextInputType.multiline,
                      decoration: InputDecoration(
                        labelText: 'Your Email',
                        labelStyle: TextStyle(fontSize: 16),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)), borderSide: BorderSide(color: Theme.of(context).dividerColor)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 50,
                    child: TextFormField(
                      obscureText: hidePass,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(fontSize: 16),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)), borderSide: BorderSide(color: Theme.of(context).dividerColor)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(13),
                          ),
                        ),
                        suffixIcon: GestureDetector(
                          child: Icon(hidePass ? Icons.visibility_off : Icons.visibility),
                          onTap: () => {
                            setState(() => hidePass = !hidePass),
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 50,
                    child: TextFormField(
                      readOnly: true,
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            fontSize: 18,
                          ),
                      keyboardType: TextInputType.multiline,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)), borderSide: BorderSide(color: Theme.of(context).dividerColor)),
                        labelStyle: TextStyle(fontSize: 16),
                        hintText: (dateFormat.format(selectedDate)),
                        hintStyle: TextStyle(color: Theme.of(context).textTheme.headline1!.color),
                        suffixIcon: InkWell(
                            onTap: () async {
                              final selectedDate = await _selectDateTime(context);
                              if (selectedDate == null) return;

                              print(selectedDate);

                              setState(() {
                                this.selectedDate = DateTime(
                                  selectedDate.year,
                                  selectedDate.month,
                                  selectedDate.day,
                                  // selectedTime.hour,
                                  // selectedTime.minute,
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
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 40),
                    child: SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13),
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, Routes.hOME);
                        },
                        child: Text(
                          'Next',
                          style: Theme.of(context).textTheme.headline1!.copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
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
