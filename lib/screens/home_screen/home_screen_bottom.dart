import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gods_eye/screens/home_screen/stream_list.dart';

class HomeScreenBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil.getInstance().setSp(510),
      margin: EdgeInsets.only(left: ScreenUtil.getInstance().setSp(118)),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: ScreenUtil.getInstance().setSp(36)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Watch now",
                  style: TextStyle(
                      fontSize: 22.0, fontFamily: "SF-Pro-Display-Bold"),
                ),
                Text(
                  "...",
                  style: TextStyle(
                      fontFamily: 'SF-Pro-Display-Bold',
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2),
                )
              ],
            ),
          ),
          Container(
            height: ScreenUtil.getInstance().setSp(455),
            child: StreamList(),
          )
        ],
      ),
    );
  }
}
