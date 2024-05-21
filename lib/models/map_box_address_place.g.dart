// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_box_address_place.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MapBoxAddressPlace _$MapBoxAddressPlaceFromJson(Map<String, dynamic> json) =>
    MapBoxAddressPlace(
      id: json['id'] as String?,
      text: json['text'] as String?,
      place_name: json['place_name'] as String?,
      center:
          const OptionalLocationConverter().fromJson(json['center'] as List?),
      context: (json['context'] as List<dynamic>?)
          ?.map((e) => AddressContext.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MapBoxAddressPlaceToJson(MapBoxAddressPlace instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'place_name': instance.place_name,
      'center': const OptionalLocationConverter().toJson(instance.center),
      'context': instance.context,
    };

AddressContext _$AddressContextFromJson(Map<String, dynamic> json) =>
    AddressContext(
      id: json['id'] as String?,
      mapbox_id: json['mapbox_id'] as String?,
      text: json['text'] as String?,
      short_code: json['short_code'] as String?,
    );

Map<String, dynamic> _$AddressContextToJson(AddressContext instance) =>
    <String, dynamic>{
      'id': instance.id,
      'mapbox_id': instance.mapbox_id,
      'text': instance.text,
      'short_code': instance.short_code,
    };
