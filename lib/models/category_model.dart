import 'package:flutter/material.dart';

class CategoryModel{
  int id;
  String title;
  IconData icon;
  CategoryModel({required this.id, required this.title, required this.icon});
  static List<CategoryModel> categories = [
    CategoryModel(id: 1, title: 'All', icon: Icons.explore),
    CategoryModel(id: 2, title: 'Sport', icon: Icons.pedal_bike),
    CategoryModel(id: 3, title: 'Birthday', icon: Icons.cake),
    CategoryModel(id: 4, title: 'Meeting', icon: Icons.meeting_room),
    CategoryModel(id: 5, title: 'WorkShop', icon: Icons.handyman_outlined),
    CategoryModel(id: 6, title: 'Eating', icon: Icons.dining),
  ];
}