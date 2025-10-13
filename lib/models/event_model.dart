import 'package:evently/models/category_model.dart';

class EventModel {
  String title;
  String data;
  String description;
  int catId;
  bool isFav;
  EventModel({
     required this.title,
    required this.data,
    required this.catId,
    required this.description,
    required this.isFav,
  } );
}
