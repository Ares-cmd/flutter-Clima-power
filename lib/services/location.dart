import 'package:geolocator/geolocator.dart';

class Location {
  double longitude;
  double latitude;

  Future<void> GetCurrentLocation() async {
    try {
      Position position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
      longitude = position.longitude;
      latitude = position.latitude;
    } catch (e) {
      print(e);
    }
  }
}
