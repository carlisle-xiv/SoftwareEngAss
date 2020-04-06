import 'package:flutter/material.dart';

class FormCard extends StatelessWidget {
  final bool showForgot;
  final String text;

  FormCard({this.text, this.showForgot});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    TextTheme textTheme = Theme.of(context).textTheme;

    return new Container(
      width: screenWidth,
      height: screenHeight * 0.405,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(screenHeight * 0.015),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0.0, screenHeight * 0.02),
              blurRadius: screenHeight * 0.02,
            ),
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0.0, screenHeight * -0.015),
              blurRadius: screenHeight * 0.015,
            ),
          ]),
      child: Padding(
        padding: EdgeInsets.only(
          left: screenWidth * 0.038,
          right: screenWidth * 0.038,
          top: screenHeight * 0.023,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(text,
                style: textTheme.headline.copyWith(
                    letterSpacing: .6,
                    fontWeight: FontWeight.w800,
                    fontSize: 24.8)),
            SizedBox(
              height: screenHeight * 0.0225,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(fontSize: 19.3),
              ),
              onChanged: (value) {},
            ),
            SizedBox(
              height: screenHeight * 0.0225,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(fontSize: 19.3),
              ),
              onChanged: (value) {},
            ),
            Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.045),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    showForgot ? "Forgot Password?" : "",
                    style: textTheme.body1.copyWith(
                        color: Colors.blue, fontWeight: FontWeight.w800),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
