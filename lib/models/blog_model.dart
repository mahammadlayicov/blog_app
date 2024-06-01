import 'package:flutter/material.dart';

class BlogModel {
  int id;
  String title;
  String description;
  String category;
  String imgPath;
  BlogModel({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.imgPath,
  });
}
