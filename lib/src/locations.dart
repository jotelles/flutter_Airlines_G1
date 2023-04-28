import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/services.dart' show rootBundle;

part 'locations.g.dart';

@JsonSerializable()
class LatLng {
  LatLng({
    required this.lat,
    required this.lng,
  });

  factory LatLng.fromJson(Map<String, dynamic> json) => _$LatLngFromJson(json);
  Map<String, dynamic> toJson() => _$LatLngToJson(this);

  final double lat;
  final double lng;
}

@JsonSerializable()
class Plan {
  Plan({
    required this.price,
    required this.id,
    required this.lat,
    required this.lng,
    required this.name,
  });

  factory Plan.fromJson(Map<String, dynamic> json) => _$PlanFromJson(json);
  Map<String, dynamic> toJson() => _$PlanToJson(this);

  final String price;
  final String id;
  final double lat;
  final double lng;
  final String name;
}

@JsonSerializable()
class Locations {
  Locations({
    required this.plans,
  });

  factory Locations.fromJson(Map<String, dynamic> json) =>
      _$LocationsFromJson(json);
  Map<String, dynamic> toJson() => _$LocationsToJson(this);

  final List<Plan> plans;
}

Future<Locations> getDestinations() async {
  return Locations.fromJson(
    json.decode(
      await rootBundle.loadString('assets/locations.json'),
    ),
  );
}
