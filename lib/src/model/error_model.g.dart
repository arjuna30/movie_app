// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ErrorModel _$$_ErrorModelFromJson(Map<String, dynamic> json) =>
    _$_ErrorModel(
      statusMessage: json['status_message'] as String,
      success: json['success'] as bool?,
      statusCode: json['status_code'] as int,
    );

Map<String, dynamic> _$$_ErrorModelToJson(_$_ErrorModel instance) =>
    <String, dynamic>{
      'status_message': instance.statusMessage,
      'success': instance.success,
      'status_code': instance.statusCode,
    };
