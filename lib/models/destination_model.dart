import 'package:flutter_travel_ui/models/activity_model.dart';

class Destination {
  String imageUrl;
  String city;
  String country;
  String description;
  List<Activity> activities;

  Destination({
    this.imageUrl,
    this.city,
    this.country,
    this.description,
    this.activities,
  });
}

List<Activity> activities = [
  Activity(
    imageUrl: 'assets/images/12.jpg',
    name: ' Geoffrey Bawa Project.',
    type: 'Sightseeing Tour',
    startTimes: ['9:00 am', '11:00 am'],
    rating: 5,
    price: 30,
  ),
  Activity(
    imageUrl: 'assets/images/13.jpg',
    name: 'Climb here to get a stunning',
    type: 'Sightseeing Tour',
    startTimes: ['11:00 pm', '1:00 pm'],
    rating: 4,
    price: 210,
  ),
  Activity(
    imageUrl: 'assets/images/14.jpg',
    name: 'Hiking And Camping',
    type: 'Sightseeing Tour',
    startTimes: ['12:30 pm', '2:00 pm'],
    rating: 3,
    price: 125,
  ),
];

List<Destination> destinations = [
  Destination(
    imageUrl: 'assets/images/3.jpg',
    city: 'Marble Beaches',
    country: 'Trincomalee',
    description: 'Trincomalee a historically and culturally rich town, offers some of the best beaches',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/4.jpg',
    city: 'Sigiriya Rock',
    country: 'Sigiriya',
    description: 'It is also famous as the Lion’s Rock or Sigiriya Rock.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/5.jpg',
    city: 'Temple of the Sacred Tooth Relic',
    country: 'Kandy',
    description: 'Kandy is another popular destination for couples who are looking to explore the rich culture of the country',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/6.jpg',
    city: 'Beira Lake',
    country: 'Colombo',
    description: 'This lake, situated at the center of the capital city',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/2.jpg',
    city: 'hills Spot',
    country: 'Ella',
    description: 'it sits in the central province of Sri Lanka',
    activities: activities,
  ),
];
