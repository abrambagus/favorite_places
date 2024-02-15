import 'dart:io';

import 'package:favorite_places/models/place.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserPLacesNotifier extends StateNotifier<List<Place>> {
  UserPLacesNotifier() : super(const []);

  void addPlace(String title, File image, PlaceLocation location) {
    final newPlace = Place(title: title, image: image, location: location);
    state = [newPlace, ...state];
  }
}

final userPlacesProvider =
    StateNotifierProvider<UserPLacesNotifier, List<Place>>(
  (ref) => UserPLacesNotifier(),
);
