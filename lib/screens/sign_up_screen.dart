import 'package:flutter/material.dart';
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
              right: screenWidth * -0.033,
              top: screenHeight * 0.024,
              child: SvgPicture.asset(
                'images/sign_up_background.svg',
                height: screenHeight * 0.305,
                width: screenWidth * 0.305,
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
                          top: screenHeight * 0.148, left: screenWidth * 0.033),
                      child: Text(
                        'Enter details to register.',
                        style: textTheme.title.copyWith(fontSize: 17.5),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.037,
                    ),
                    FormCard(
                      text: 'Sign Up',
                      showForgot: false,
                    ),
                    SizedBox(
                      height: screenHeight * 0.03,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[RoundedButton(text: "SIGN UP")],
                    ),
                    SizedBox(
                      height: screenHeight * 0.03,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        horizontalLine(),
                        SizedBox(
                          width: screenWidth * 0.03,
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
