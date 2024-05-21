import 'package:json_annotation/json_annotation.dart';

import 'location.dart';
part 'map_box_address_place.g.dart';

@JsonSerializable()
class MapBoxAddressPlace {
  final String? id;

  final String? text;
  final String? place_name;

  @OptionalLocationConverter()
  final Location? center;
  final List<AddressContext>? context;
  final String? address;

  MapBoxAddressPlace({
    this.id,
    this.text,
    this.place_name,
    this.center,
    this.context,
    this.address,
  });

  factory MapBoxAddressPlace.fromJson(Map<String, dynamic> json) =>
      _$MapBoxAddressPlaceFromJson(json);

  Map<String, dynamic> toJson() => _$MapBoxAddressPlaceToJson(this);

  @override
  String toString() => text ?? place_name!;
}

@JsonSerializable()
class AddressContext {
  final String? id;
  final String? mapbox_id;
  final String? text;
  final String? short_code;

  AddressContext({
    this.id,
    this.mapbox_id,
    this.text,
    this.short_code,
  });

  factory AddressContext.fromJson(Map<String, dynamic> json) =>
      _$AddressContextFromJson(json);

  Map<String, dynamic> toJson() => _$AddressContextToJson(this);
}