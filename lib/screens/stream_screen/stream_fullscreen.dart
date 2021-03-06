import 'package:flutter/cupertino.dart';
import 'package:back_button_interceptor/back_button_interceptor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_vlc_player/vlc_player.dart';
import 'package:flutter_vlc_player/vlc_player_controller.dart';
import 'package:gods_eye/models/stream_model/stream_data.dart';
import 'package:gods_eye/models/sub_stream_model/camera_streams.dart';
import 'package:gods_eye/screens/stream_screen/stream_screen.dart';
import 'package:provider/provider.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class StreamFullScreen extends StatefulWidget {
  static String id = 'stream_fullscreen';

  @override
  _StreamFullScreenState createState() => _StreamFullScreenState();
}

class _StreamFullScreenState extends State<StreamFullScreen> {
  VlcPlayerController _videoControllerFull;
  String urlToStreamVideo;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setState(() {
      urlToStreamVideo = Provider.of<CameraStreams>(context)
          .cameraStreams[Provider.of<StreamData>(context).currentStreamTitle]
              [Provider.of<CameraStreams>(context).currentCamera]
          .streamSrc;
    });
  }

  @override
  void initState() {
    _videoControllerFull = VlcPlayerController();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
    BackButtonInterceptor.add(backInterceptor);
    super.initState();
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    BackButtonInterceptor.remove(backInterceptor);
    _videoControllerFull.dispose();
    super.dispose();
  }

  bool backInterceptor(bool stopDefaultButtonEvent) {
    Navigator.of(context).pop();
    Navigator.of(context).push(StreamScreen());
    return true;
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Container(
        height: screenHeight,
        width: screenWidth,
        color: Colors.black,
        child: Stack(
          children: <Widget>[
            VlcPlayer(
              defaultWidth: screenHeight.toInt(),
              defaultHeight: screenWidth.toInt(),
              url: urlToStreamVideo,
              controller: _videoControllerFull,
              placeholder: Container(
                width: screenWidth,
                height: screenHeight,
                color: Colors.black,
                child: Center(child: CircularProgressIndicator()),
              ),
            ),
            Positioned(
              right: screenWidth * 0.015,
              bottom: screenHeight * 0.026,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(StreamScreen());
                },
                child: Icon(
                  // Icons.fullscreen_exit,
                  AntDesign.shrink,
                  color: Colors.white,
                  size: screenHeight * 0.06,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
