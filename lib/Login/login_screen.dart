// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_app/constance/constance.dart';

import '../main.dart';
import 'forgot_password.dart';
import 'register_page.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool hidePass = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
          print('Click LoginScreen');
        },
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 40, left: 15, right: 15, bottom: 15),
            child: Column(
              children: [
                Center(
                  child: Image.asset(
                    ConstanceData.blossomTextLogo,
                    fit: BoxFit.cover,
                    height: 250,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      'Please login to use app',
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                  ],
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
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          borderSide: BorderSide(
                              color: Theme.of(context).dividerColor)),
                      labelText: 'Email or username',
                      labelStyle: TextStyle(fontSize: 16),
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
                      labelText: 'Type password',
                      labelStyle: TextStyle(fontSize: 16),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          borderSide: BorderSide(
                              color: Theme.of(context).dividerColor)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(13),
                        ),
                      ),
                      suffixIcon: GestureDetector(
                        child: Icon(
                          hidePass ? Icons.visibility_off : Icons.visibility,
                        ),
                        onTap: () => {
                          setState(() => hidePass = !hidePass),
                        },
                      ),
                    ),
                    // autovalidateMode: AutovalidateMode.always,
                    // validator: (_password) {
                    //   bool _passwordValid =
                    //       RegExp(r"^[0-9]+$").hasMatch(_password);
                    //   if (_password.isEmpty)
                    //     return 'Please Enter Your Password';
                    //   if (!_passwordValid)
                    //     return 'Please Enter Valid Password';
                    //   if (_password.length < 6)
                    //     return 'Please Enter Valid Password';
                    //   return null;
                    // },
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
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
                        'Forgot Password?',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 40),
                  child: SizedBox(
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
                        Navigator.pushReplacementNamed(context, Routes.hOME);
                      },
                      child: Text(
                        'SING IN'.toUpperCase(),
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        endIndent: 15,
                        thickness: 0.7,
                      ),
                    ),
                    Text(
                      'Or connect with',
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        indent: 15,
                        thickness: 0.7,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 7,
                              color: Colors.black12,
                              spreadRadius: 2)
                        ],
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushReplacementNamed(context, Routes.hOME);
                        },
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.black,
                          child: Image.asset(
                            ConstanceData.appleIcon,
                            height: 25,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 7,
                              color: Colors.black12,
                              spreadRadius: 2)
                        ],
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushReplacementNamed(context, Routes.hOME);
                        },
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage(
                            ConstanceData.facebookIcon,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 7,
                              color: Colors.black12,
                              spreadRadius: 2)
                        ],
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushReplacementNamed(context, Routes.hOME);
                        },
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.white,
                          child: Image.asset(
                            ConstanceData.googleIcon,
                            height: 22,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(),
                  ],
                ),
                SizedBox(height: 70),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an Account? ",
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegisterScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Sing Up",
                        style: Theme.of(context).textTheme.headline1!.copyWith(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
