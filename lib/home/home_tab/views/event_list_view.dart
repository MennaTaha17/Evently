import 'package:evently/common/widgets/cards.dart';
import 'package:flutter/material.dart';

class EventListView extends StatelessWidget {
  const EventListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 8),
        itemCount: 10,
        itemBuilder: (context, index) {
          return EventCards();
        },
      ),
    );
  }
}
