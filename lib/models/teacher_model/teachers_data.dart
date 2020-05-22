import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:gods_eye/models/teacher_model/teachers.dart';

class TeachersData extends ChangeNotifier {
  List<Teacher> _teachers = [
    Teacher(
        name: "Mr. Okonkuta",
        contact: "024 123 4567",
        imgSrc: "images/father.jpg"),
    Teacher(
        name: "Mr. Okonkwo",
        contact: "024 123 4567",
        imgSrc: "images/father.jpg"),
    Teacher(
        name: "Mr. Okonkwo",
        contact: "024 123 4567",
        imgSrc: "images/father.jpg"),
    Teacher(
        name: "Mr. Okonkwo",
        contact: "024 123 4567",
        imgSrc: "images/father.jpg"),
    Teacher(
        name: "Mr. Okonkwo",
        contact: "024 123 4567",
        imgSrc: "images/father.jpg"),
    Teacher(
        name: "Mr. Okonkwo",
        contact: "024 123 4567",
        imgSrc: "images/father.jpg"),
    Teacher(
        name: "Mr. Okonkwo",
        contact: "024 123 4567",
        imgSrc: "images/father.jpg"),
    Teacher(
        name: "Mr. Okonkwo",
        contact: "024 123 4567",
        imgSrc: "images/father.jpg"),
    Teacher(
        name: "Mr. Okonkwo",
        contact: "024 123 4567",
        imgSrc: "images/father.jpg"),
  ];

  UnmodifiableListView<Teacher> get teachers {
    return UnmodifiableListView(_teachers);
  }

  int get teachersCount {
    return _teachers.length;
  }
}
