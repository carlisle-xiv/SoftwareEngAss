import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gods_eye/models/teacher_model/teachers_data.dart';
import 'package:gods_eye/screens/school_screen/teacher_card.dart';
import 'package:provider/provider.dart';

class TeachersList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TeachersData>(builder: (context, teachersData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          final teacherData = teachersData.teachers[index];
          return TeacherCard(
            imgSrc: teacherData.imgSrc,
            name: teacherData.name,
            contact: teacherData.contact,
          );
        },
        shrinkWrap: true,
        itemCount: teachersData.teachersCount,
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
      );
    });
  }
}
