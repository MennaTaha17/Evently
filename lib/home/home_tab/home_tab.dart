import 'package:evently/gen/assets.gen.dart';
import 'package:evently/home/home_tab/views/event_list_view.dart';
import 'package:evently/home/home_tab/views/home_header.dart';
import 'package:evently/models/event_model.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    List<EventModel> event = List.generate(
      5,
      (index) => EventModel(
        title: "title00",
        data: "20\nNov",
        catId: 2,
        description: '',
        isFav: index % 2 == 0,

      ),
    );
    return Column(children: [HomeHeader(), EventListView(events: event)]);
  }
}
