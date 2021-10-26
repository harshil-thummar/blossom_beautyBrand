// ignore_for_file: unused_local_variable, prefer_typing_uninitialized_variables, unnecessary_const, avoid_print, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_app/Language/appLocalizations.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../main.dart';

class EmailVerification extends StatefulWidget {
  EmailVerification({Key? key}) : super(key: key);

  @override
  _EmailVerificationState createState() => _EmailVerificationState();
}

class _EmailVerificationState extends State<EmailVerification> {
  // ..text = "000000";

  // ignore: close_sinks
  StreamController<ErrorAnimationType>? errorController;

  bool hasError = false;
  String currentText = "";
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    errorController = StreamController<ErrorAnimationType>();
    super.initState();
  }

  @override
  void dispose() {
    errorController!.close();

    super.dispose();
  }

  // snackBar Widget
  snackBar(String? message) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message!),
        duration: Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                  'Email\nVerification',
                  style: Theme.of(context)
                      .textTheme
                      .headline1!
                      .copyWith(fontSize: 33),
                ),
                SizedBox(height: 20),
                Text(AppLocalizations.of('Please type OTP code that we given you'),
                    style: Theme.of(context).textTheme.subtitle2!),
                Padding(
                  padding: EdgeInsets.only(top: 40, right: 30, left: 30),
                  child: Column(
                    children: <Widget>[
                      Form(
                        key: formKey,
                        child: PinCodeTextField(
                          appContext: context,
                          // pastedTextStyle: TextStyle(
                          //   color: Colors.green.shade600,
                          //   fontWeight: FontWeight.bold,
                          // ),
                          length: 4,
                          // obscureText: true,
                          // obscuringCharacter: '*',
                          // obscuringWidget:   FlutterLogo(
                          //   size: 24,
                          // ),
                          blinkWhenObscuring: true,
                          animationType: AnimationType.fade,
                          validator: (v) {
                            if (v!.length < 3) {
                              return null;
                            } else {
                              return null;
                            }
                          },
                          pinTheme: PinTheme(
                              shape: PinCodeFieldShape.box,
                              borderRadius: BorderRadius.circular(15),
                              fieldHeight: 60,
                              fieldWidth: 60,
                              activeFillColor: Colors.white,
                              activeColor: Theme.of(context).primaryColor,
                              inactiveColor: Colors.black12,
                              selectedFillColor: Colors.white,
                              inactiveFillColor: Colors.white,
                              selectedColor: Theme.of(context).primaryColor),
                          textStyle: TextStyle(color: Colors.black),
                          cursorColor: Colors.black,
                          animationDuration: Duration(milliseconds: 300),
                          enableActiveFill: true,
                          errorAnimationController: errorController,
                          keyboardType: TextInputType.number,
                          boxShadows: [
                            BoxShadow(
                              offset: Offset(0, 1),
                              color: Theme.of(context).dividerColor,
                              blurRadius: 8,
                            )
                          ],
                          onCompleted: (v) {
                            print("Completed");
                          },
                          onChanged: (value) {
                            print(value);
                            setState(() {
                              currentText = value;
                            });
                          },
                          beforeTextPaste: (text) {
                            print("Allowing to paste $text");
                            return true;
                          },
                        ),
                      ),
                      Text(
                        hasError ? "Please fill up all the cells properly" : "",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                buildTimer(),
                SizedBox(height: 15),
                //   ThemeChange(),
                SizedBox(height: MediaQuery.of(context).size.width / 100),

                SizedBox(
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
                      formKey.currentState!.validate();
                      // conditions for validating
                      if (currentText.length != 4 || currentText != "") {
                        errorController!.add(ErrorAnimationType.shake);
                        setState(() {
                          hasError = true;
                          /*Email Verification Buypass*/
                          Navigator.pushReplacementNamed(
                              context, Routes.cREATEPASSWORD);
                        });
                      } else {
                        setState(
                          () {
                            hasError = false;
                            snackBar("OTP Verified!!");
                            /*Email Verification Active*/
                            // Navigator.pushReplacementNamed(
                            //     context, Routes.CREATEPASSWORD);
                          },
                        );
                      }
                    },
                    child: Text(
                      'Next',
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
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
            onPressed: () {
              snackBar("OTP resend!!");
            },
            child: Row(
              children: [
                Text(
                  "Resend on",
                  style: Theme.of(context).textTheme.headline1,
                ),
                SizedBox(
                  width: 5,
                ),
                TweenAnimationBuilder(
                  tween: Tween(begin: 30.0, end: 0.0),
                  duration: Duration(seconds: 30),
                  builder: (_, dynamic value, child) => Text(
                      "00:${value.toInt()}",
                      style: Theme.of(context)
                          .textTheme
                          .headline1!
                          .copyWith(color: Theme.of(context).primaryColor)),
                ),
              ],
            )),
      ],
    );
  }
}
