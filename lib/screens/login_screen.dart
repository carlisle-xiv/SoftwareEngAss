import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gods_eye/components/horizontal_line.dart';
import 'package:gods_eye/components/form_card.dart';
import 'package:gods_eye/components/radio_button.dart';
import 'package:gods_eye/components/rounded_button.dart';
import 'package:gods_eye/screens/main_nav.dart';
import 'package:gods_eye/screens/sign_up_screen.dart';

class LoginScreen extends StatefulWidget {
  static String id = 'login_screen';
  @override
  _LoginScreenState createState() => new _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isSelected = false;

  void _radio() {
    setState(() {
      _isSelected = !_isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    ScreenUtil.instance =
        ScreenUtil(width: 750, height: 1334, allowFontScaling: true);
    return new Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: true,
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Positioned(
              right: ScreenUtil.getInstance().setSp(-20),
              top: ScreenUtil.getInstance().setSp(28),
              child: SvgPicture.asset(
                'images/login_background.svg',
                height: ScreenUtil.getInstance().setSp(370),
                width: ScreenUtil.getInstance().setSp(370),
              ),
            ),
            Positioned(
              right: 0.0,
              bottom: 0.0,
              child: Image.asset("images/city.png"),
            ),
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Padding(
                padding: EdgeInsets.only(left: 28.0, right: 28.0, top: 60.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Image.asset(
                          "images/ball.png",
                          width: ScreenUtil.getInstance().setWidth(110),
                          height: ScreenUtil.getInstance().setHeight(110),
                        ),
                        Text("Welcome.",
                            style: TextStyle(
                                fontSize: ScreenUtil.getInstance().setSp(47),
                                letterSpacing: .6,
                                fontWeight: FontWeight.w900)),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: ScreenUtil.getInstance().setSp(120),
                          left: ScreenUtil.getInstance().setSp(25)),
                      child: Text('Sign in to continue.',
                          style: TextStyle(
                              fontSize: ScreenUtil.getInstance().setSp(32),
                              fontWeight: FontWeight.w500)),
                    ),
                    SizedBox(
                      height: ScreenUtil.getInstance().setHeight(50),
                    ),
                    FormCard(
                      text: 'Login',
                      showForgot: true,
                    ),
                    SizedBox(height: ScreenUtil.getInstance().setHeight(40)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            SizedBox(
                              width: 12.0,
                            ),
                            GestureDetector(
                              onTap: _radio,
                              child: radioButton(_isSelected),
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            Text("Remember me",
                                style: TextStyle(
                                  fontSize: ScreenUtil.getInstance().setSp(23),
                                  fontWeight: FontWeight.w600,
                                ))
                          ],
                        ),
                        RoundedButton(
                          text: "SIGN IN",
                          onPressed: () {
                            Navigator.pushNamed(context, MainNav.id);
                          },
                        )
                      ],
                    ),
                    SizedBox(
                      height: ScreenUtil.getInstance().setHeight(40),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        horizontalLine(),
                        SizedBox(
                          width: ScreenUtil.getInstance().setHeight(60),
                        ),
                        horizontalLine()
                      ],
                    ),
                    SizedBox(
                      height: ScreenUtil.getInstance().setHeight(70),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "New User? ",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, SignUpScreen.id);
                          },
                          child: Text("Sign Up",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold)),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
