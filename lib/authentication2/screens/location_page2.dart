import 'package:flutter/material.dart';
import 'package:geocode/geocode.dart';
import 'package:location/location.dart';

class GetUserLocation extends StatefulWidget {
  const GetUserLocation({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _GetUserLocationState createState() => _GetUserLocationState();
}

class _GetUserLocationState extends State<GetUserLocation> {
  LocationData? currentLocation;
  String address = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              if (currentLocation != null)
                Text(
                    "Location: ${currentLocation?.latitude}, ${currentLocation?.longitude}"),
              if (currentLocation != null) Text("Address: $address"),
              MaterialButton(
                onPressed: () {
                  _getLocation().then((value) {
                    LocationData? location = value;
                    _getAddress(location?.latitude, location?.longitude)
                        .then((value) {
                      setState(() {
                        currentLocation = location;
                        address = value;
                      });
                    });
                  });
                },
                color: Colors.purple,
                child: const Text(
                  "Get Location",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<LocationData?> _getLocation() async {
    Location location = Location();
    LocationData locationData;

    bool serviceEnabled;
    PermissionStatus permissionGranted;

    serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        return null;
      }
    }

    permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        return null;
      }
    }

    locationData = await location.getLocation();

    return locationData;
  }

  Future<String> _getAddress(double? lat, double? lang) async {
    if (lat == null || lang == null) return "";
    GeoCode geoCode = GeoCode();
    Address address =
        await geoCode.reverseGeocoding(latitude: lat, longitude: lang);
    return "${address.streetAddress}, ${address.city}, ${address.countryName}, ${address.postal}";
  }
}
