import 'package:flutter/material.dart';

import '../gen/assets.gen.dart';

class CategoryModel {
  int id;
  String title;
  IconData icon;
  String? designPath;
  CategoryModel({
    required this.id,
    required this.title,
    required this.icon,
    this.designPath,
  });
  static List<CategoryModel> categories = [
    CategoryModel(id: 1, title: 'All', icon: Icons.explore),
    CategoryModel(
      id: 2,
      title: 'Sport',
      designPath: Assets.images.png.sport.path,
      icon: Icons.pedal_bike,
    ),
    CategoryModel(
      id: 3,
      title: 'Birthday',
      designPath: Assets.images.png.birthday.path,
      icon: Icons.cake,
    ),
    CategoryModel(
      id: 4,
      title: 'Meeting',
      designPath: Assets.images.png.meeting.path,
      icon: Icons.meeting_room,
    ),
    CategoryModel(
      id: 5,
      title: 'WorkShop',
      designPath: Assets.images.png.workShop.path,
      icon: Icons.handyman_outlined,
    ),
    CategoryModel(
      id: 6,
      title: 'Eating',
      designPath: Assets.images.png.eating.path,
      icon: Icons.dining,
    ),
  ];
}
