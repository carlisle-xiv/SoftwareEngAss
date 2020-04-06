import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function onPressed;

  RoundedButton({@required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    TextTheme textTheme = Theme.of(context).textTheme;

    return InkWell(
      child: Container(
        width: screenWidth * 0.44,
        height: screenHeight * 0.075,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xFF17ead9),
              Colors.blue,
            ]),
            borderRadius: BorderRadius.circular(screenHeight * 0.01),
            boxShadow: [
              BoxShadow(
                  color: Color(0xFF6078ea).withOpacity(.3),
                  offset: Offset(0.0, screenHeight * 0.01),
                  blurRadius: screenHeight * 0.01)
            ]),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onPressed,
            child: Center(
              child: Text(
                text,
                style: textTheme.title.copyWith(
                    letterSpacing: 1.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontSize: 19.6),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
