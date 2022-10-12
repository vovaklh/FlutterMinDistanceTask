// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DataPostModel _$$_DataPostModelFromJson(Map<String, dynamic> json) =>
    _$_DataPostModel(
      id: json['id'] as String,
      result: StepsModel.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DataPostModelToJson(_$_DataPostModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'result': instance.result.toJson(),
    };
