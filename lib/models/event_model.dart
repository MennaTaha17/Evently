import 'package:evently/models/category_model.dart';

class EventModel {
  String title;
  String? id;
  String data;
  String description;
  int catId;
  bool isFav;
  EventModel({
    required this.title,
    this.id,
    required this.data,
    required this.catId,
    required this.description,
    required this.isFav,
  });

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'id': id,
      'description': description,
      'catId': catId,
      'isFav': isFav,
      'data': data,
    };
  }

 static EventModel fromJson(Map<String, dynamic> Json) {
     return EventModel(
      title: Json['title'],
      data: Json['data'],
      catId: Json['catId'],
      description: Json['description'],
      isFav: Json['isFav'],
       id: Json['id'],
    );
  }
}
