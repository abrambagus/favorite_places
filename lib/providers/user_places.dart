import 'dart:io';

import 'package:favorite_places/models/place.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserPLacesNotifier extends StateNotifier<List<Place>> {
  UserPLacesNotifier() : super(const []);

  void addPlace(String title, File image) {
    final newPlace = Place(title: title, image: image);
    state = [newPlace, ...state];
  }
}

final userPlacesProvider =
    StateNotifierProvider<UserPLacesNotifier, List<Place>>(
  (ref) => UserPLacesNotifier(),
);
