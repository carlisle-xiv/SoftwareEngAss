import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gods_eye/components/form_card.dart';
import 'package:gods_eye/components/horizontal_line.dart';
import 'package:gods_eye/components/rounded_button.dart';

class SignUpScreen extends StatefulWidget {
  static String id = 'sign_up_screen';
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
              right: ScreenUtil.getInstance().setSp(-25),
              top: ScreenUtil.getInstance().setSp(30),
              child: SvgPicture.asset(
                'images/sign_up_background.svg',
                height: ScreenUtil.getInstance().setSp(380),
                width: ScreenUtil.getInstance().setSp(380),
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
                          top: ScreenUtil.getInstance().setSp(184),
                          left: ScreenUtil.getInstance().setSp(25)),
                      child: Text('Enter details to register.',
                          style: TextStyle(
                              fontSize: ScreenUtil.getInstance().setSp(32),
                              fontWeight: FontWeight.w500)),
                    ),
                    SizedBox(
                      height: ScreenUtil.getInstance().setHeight(40),
                    ),
                    FormCard(
                      text: 'Sign Up',
                      showForgot: false,
                    ),
                    SizedBox(height: ScreenUtil.getInstance().setHeight(40)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[RoundedButton(text: "SIGN UP")],
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
