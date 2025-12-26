import 'package:evently/common/theme/app_colors.dart';
import 'package:evently/common/widgets/cards.dart';
import 'package:evently/common/widgets/custom_text_field.dart';
import 'package:evently/home/home_tab/views/event_list_view.dart';
import 'package:flutter/material.dart';

import '../../models/event_model.dart';

class FavTab extends StatelessWidget {
  const FavTab({super.key});

  @override
  Widget build(BuildContext context) {
    List<EventModel> event = List.generate(
        4,
            (index) => EventModel(
          title: "title00",
          data: "20\nNov",
          catId: index+2,
          description: '',
          isFav: index % 2 == 0,

        ),);
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: CustomTextField(
              prefixIcon: Icon(Icons.search, color: AppColors.mainColor),
              hintText: "title00",
              hintColor: AppColors.mainColor,
              borderColor: AppColors.mainColor,
            ),
          ),
          EventListView(events: event),
        ],
      ),
    );
  }
}
