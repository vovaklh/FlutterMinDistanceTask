// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_wrapper_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DataWrapperModel _$$_DataWrapperModelFromJson(Map<String, dynamic> json) =>
    _$_DataWrapperModel(
      error: json['error'] as bool,
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => DataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DataWrapperModelToJson(_$_DataWrapperModel instance) =>
    <String, dynamic>{
      'error': instance.error,
      'message': instance.message,
      'data': instance.data,
    };
