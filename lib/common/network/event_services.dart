import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:evently/models/event_model.dart';

class EventServices {
  static CollectionReference<EventModel> _getEventCollection() {
    CollectionReference<EventModel> collectionReference = FirebaseFirestore
        .instance
        .collection('event')
        .withConverter<EventModel>(
          fromFirestore:
              (snapshot, options) => EventModel.fromJson(snapshot.data()!),
          toFirestore: (value, options) => value.toJson(),
        );
    return collectionReference;
  }

  static Future<void> _createNewEvent(EventModel event) async {
    CollectionReference<EventModel> collection = _getEventCollection();
    DocumentReference<EventModel> doc = collection.doc();
    event.id = doc.id;
    await doc.set(event);
  }

  static Future<List<EventModel>> _getEvents() async {
    CollectionReference<EventModel> collection = _getEventCollection();
    QuerySnapshot<EventModel> snapshot = await collection.get();
    List<EventModel> events = snapshot.docs.map((e) => e.data()).toList();
    return events;
  }
}
