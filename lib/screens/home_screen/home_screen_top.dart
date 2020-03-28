import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gods_eye/models/stream_data.dart';
import 'package:gods_eye/screens/home_screen/clipper.dart';
import 'package:gods_eye/utils/constants.dart';
import 'package:gods_eye/utils/custom_icon.dart';
import 'package:provider/provider.dart';

class HomeScreenTop extends StatefulWidget {
  @override
  _HomeScreenTopState createState() => _HomeScreenTopState();
}

class _HomeScreenTopState extends State<HomeScreenTop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil.getInstance().setSp(790),
      child: Stack(
        children: <Widget>[
          ClipPath(
            clipper: Clipper(),
            child: Container(
              height: ScreenUtil.getInstance().setSp(675),
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0.0, 10.0),
                    blurRadius: 10.0)
              ]),
              child: Stack(
                children: <Widget>[
                  Image.asset(
                      Provider.of<StreamData>(context)
                          .streams[
                              Provider.of<StreamData>(context).currentStream]
                          .imgSrc,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity),
//                  FadeInImage(
//                    fadeInDuration: Duration(seconds: 2),
//                    placeholder: AssetImage(
//                      Provider.of<StreamData>(context)
//                          .streams[
//                              Provider.of<StreamData>(context).beforeStream]
//                          .imgSrc,
//                    ),
//                    image: AssetImage(
//                      Provider.of<StreamData>(context)
//                          .streams[
//                              Provider.of<StreamData>(context).currentStream]
//                          .imgSrc,
//                    ),
//                    width: double.infinity,
//                    height: double.infinity,
//                    fit: BoxFit.fill,
//                  ),
                  Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                          const Color(0x00000000),
                          const Color(0xD9333333)
                        ],
                            stops: [
                          0.0,
                          0.9
                        ],
                            begin: FractionalOffset(0.0, 0.0),
                            end: FractionalOffset(0.0, 1.0))),
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: ScreenUtil.getInstance().setSp(218),
                          left: ScreenUtil.getInstance().setSp(173)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(
                                top: ScreenUtil.getInstance().setSp(100)),
                            child: Text(
                              Provider.of<StreamData>(context)
                                  .streams[Provider.of<StreamData>(context)
                                      .currentStream]
                                  .title,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 45.0,
                                  fontFamily: "SF-Pro-Display-Bold"),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: ScreenUtil.getInstance().setSp(675),
            right: ScreenUtil.getInstance().setSp(-37),
            child: FractionalTranslation(
              translation: Offset(0.0, -0.5),
              child: Row(
                children: <Widget>[
                  FloatingActionButton(
                    backgroundColor: Colors.white,
                    onPressed: () {},
                    child: Icon(
                      Icons.add,
                      color: kPrimaryColor,
                    ),
                  ),
                  SizedBox(
                    width: ScreenUtil.getInstance().setSp(22),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: RaisedButton(
                      onPressed: () {},
                      color: kPrimaryColor,
                      padding: EdgeInsets.symmetric(
                          vertical: ScreenUtil.getInstance().setSp(27),
                          horizontal: ScreenUtil.getInstance().setSp(146)),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "Watch Now",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                                fontFamily: "SF-Pro-Display-Bold"),
                          ),
                          SizedBox(
                            width: ScreenUtil.getInstance().setSp(9),
                          ),
                          RotatedBox(
                            quarterTurns: 2,
                            child: Icon(CustomIcons.back_icon,
                                size: 25.0, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
