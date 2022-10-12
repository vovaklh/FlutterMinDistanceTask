// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'steps_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StepsModel _$$_StepsModelFromJson(Map<String, dynamic> json) =>
    _$_StepsModel(
      steps: (json['steps'] as List<dynamic>)
          .map((e) => PointPostModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      path: json['path'] as String,
    );

Map<String, dynamic> _$$_StepsModelToJson(_$_StepsModel instance) =>
    <String, dynamic>{
      'steps': instance.steps.map((e) => e.toJson()).toList(),
      'path': instance.path,
    };
