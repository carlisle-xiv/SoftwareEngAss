import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sliver_fab/sliver_fab.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: Builder(
        builder: (context) => SliverFab(
          floatingWidget: CircularProfileAvatar(
            "",
            radius: screenWidth * 0.13,
            backgroundColor: Colors.transparent,
            borderWidth: screenWidth * 0.005, 
            borderColor:
                Colors.white, 
            elevation:
                5.0,
            foregroundColor: Colors.blue.withOpacity(
                0.5),
            onTap: () {
              Scaffold.of(context)
                  .showSnackBar(SnackBar(content: Text("You clicked avatar")));
            },
            child: Image.asset(
              "images/father.jpg",
              fit: BoxFit.cover,
            ),
          ),
          floatingPosition: FloatingPosition(left: screenWidth * 0.05),
          expandedHeight: screenHeight * 0.4,
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: Colors.blue,
              expandedHeight: screenHeight * 0.43,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                title: Padding(
                  padding: EdgeInsets.only(left: screenWidth * 0.1),
                  child: Text("Laboski Bezoz", style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                background: Image.asset(
                  "images/children.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                List.generate(
                  10,
                  (int index) => ListTile(title: Text("Item $index")),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
