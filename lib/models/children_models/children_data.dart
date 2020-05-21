import 'dart:collection';
import 'package:flutter/cupertino.dart';
import 'package:gods_eye/models/children_models/child.dart';

class ChildrenData extends ChangeNotifier{
  List<Child> _children = [
    Child(name: "Ray Bezoz", level: "KG 2", imgSrc: "images/child0.jpg"),
    Child(name: "Gloria Bezoz", level: "KG 1", imgSrc: "images/child2.jpeg"),
    Child(name: "Kekule Bezoz", level: "Nursery 2", imgSrc: "images/child4.jpeg"),
  ];

  UnmodifiableListView<Child> get children {
    return UnmodifiableListView(_children);
  }

  int get childrenCount{
    return children.length;
  }
}