import 'package:evently/common/widgets/cards.dart';
import 'package:evently/models/event_model.dart';
import 'package:flutter/material.dart';

class EventListView extends StatelessWidget {
  const EventListView({super.key,required this.events});
  final List<EventModel> events;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 8),
        itemCount: events.length,
        itemBuilder: (context, index) {
          return EventCards(eventModel: events[index]);
        },
      ),
    );
  }
}
