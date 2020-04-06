import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    TextTheme textTheme = Theme.of(context).textTheme;

    return new Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: true,
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Positioned(
              right: screenWidth * -0.026,
              top: screenHeight * 0.023,
              child: SvgPicture.asset(
                'images/login_background.svg',
                height: screenHeight * 0.297,
                width: screenWidth * 0.297,
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
                padding: EdgeInsets.only(
                  left: screenWidth * 0.068,
                  right: screenWidth * 0.068,
                  top: screenHeight * 0.088,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Image.asset(
                          "images/ball.png",
                          width: screenWidth * 0.147,
                          height: screenWidth * 0.138,
                        ),
                        Text(
                          "Welcome.",
                          style: textTheme.headline.copyWith(
                              letterSpacing: .6,
                              fontWeight: FontWeight.w900,
                              fontSize: 26),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: screenHeight * 0.0965,
                          left: screenWidth * 0.033),
                      child: Text(
                        'Sign in to continue.',
                        style: textTheme.title.copyWith(fontSize: 17.5),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.037,
                    ),
                    FormCard(
                      text: 'Login',
                      showForgot: true,
                    ),
                    SizedBox(
                      height: screenHeight * 0.03,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            SizedBox(
                              width: screenWidth * 0.03,
                            ),
                            GestureDetector(
                              onTap: _radio,
                              child: radioButton(_isSelected),
                            ),
                            SizedBox(
                              width: screenWidth * 0.02,
                            ),
                            Text("Remember me",
                                style: textTheme.body1.copyWith(
                                    fontSize: 12.7,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: .005))
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
                      height: screenHeight * 0.03,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        horizontalLine(),
                        SizedBox(
                          width: screenWidth * 0.07,
                        ),
                        horizontalLine()
                      ],
                    ),
                    SizedBox(
                      height: screenHeight * 0.053,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "New User? ",
                          style: textTheme.body1
                              .copyWith(fontWeight: FontWeight.w800),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, SignUpScreen.id);
                          },
                          child: Text(
                            "Sign Up",
                            style: textTheme.body1.copyWith(
                                color: Colors.blue,
                                fontWeight: FontWeight.w800),
                          ),
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
