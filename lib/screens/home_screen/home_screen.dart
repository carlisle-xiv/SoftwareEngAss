import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gods_eye/models/stream_data.dart';
import 'package:gods_eye/screens/home_screen/home_screen_bottom.dart';
import 'package:gods_eye/screens/home_screen/home_screen_top.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => StreamData(),
      builder: (context) => StreamData(),
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Stack(
              children: <Widget>[
                Positioned(
                  bottom: ScreenUtil.getInstance().setSp(0),
                  right: ScreenUtil.getInstance().setSp(330),
                  child: Opacity(
                    opacity: 0.35,
                    child: SvgPicture.asset(
                      'images/play_time.svg',
                      height: ScreenUtil.getInstance().setSp(700),
                      width: ScreenUtil.getInstance().setSp(700),
                    ),
                  ),
                ),
                Column(
                  children: <Widget>[HomeScreenTop(), HomeScreenBottom()],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
