import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gods_eye/models/children_model/children_data.dart';
import 'package:gods_eye/screens/profile_screen/child_card.dart';
import 'package:provider/provider.dart';

class ChildrenList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ChildrenData>(builder: (context, childrenData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          final childData = childrenData.children[index];
          return Childcard(
              name: childData.name,
              level: childData.level,
              imgSrc: childData.imgSrc);
        },
        shrinkWrap: true,
        itemCount: childrenData.childrenCount,
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
      );
    });
  }
}
