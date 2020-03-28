import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gods_eye/models/stream_data.dart';
import 'package:provider/provider.dart';

class StreamCard extends StatelessWidget {
  const StreamCard({
    @required this.imgSrc,
    @required this.title,
    @required this.index,
  });

  final String imgSrc;
  final String title;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: ScreenUtil.getInstance().setSp(45),
          horizontal: ScreenUtil.getInstance().setSp(22)),
      child: GestureDetector(
        onTap: () {
          if (Provider.of<StreamData>(context).currentStream != index) {
            Provider.of<StreamData>(context).updateCurrentStream(index);
          }
        },
        child: Container(
          height: ScreenUtil.getInstance().setSp(310),
          width: ScreenUtil.getInstance().setSp(246),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10.0,
                    offset: Offset(0.0, 10.0))
              ]),
          child: Column(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0)),
                child: Image.asset(
                  imgSrc,
                  width: double.infinity,
                  height: ScreenUtil.getInstance().setSp(238),
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: ScreenUtil.getInstance().setSp(8),
                    left: ScreenUtil.getInstance().setSp(13),
                    right: ScreenUtil.getInstance().setSp(13)),
                child: Text(title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16.0, fontFamily: "SF-Pro-Display-Bold")),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: ScreenUtil.getInstance().setSp(7),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
