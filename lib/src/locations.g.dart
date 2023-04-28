// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locations.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LatLng _$LatLngFromJson(Map<String, dynamic> json) => LatLng(
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
    );

Map<String, dynamic> _$LatLngToJson(LatLng instance) => <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
    };

Plan _$PlanFromJson(Map<String, dynamic> json) => Plan(
      price: json['price'] as String,
      id: json['id'] as String,
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$PlanToJson(Plan instance) => <String, dynamic>{
      'price': instance.price,
      'id': instance.id,
      'lat': instance.lat,
      'lng': instance.lng,
      'name': instance.name,
    };

Locations _$LocationsFromJson(Map<String, dynamic> json) => Locations(
      plans: (json['plans'] as List<dynamic>)
          .map((e) => Plan.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LocationsToJson(Locations instance) => <String, dynamic>{
      'plans': instance.plans,
    };
