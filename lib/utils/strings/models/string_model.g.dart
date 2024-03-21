// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'string_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StringModelImpl _$$StringModelImplFromJson(Map<String, dynamic> json) =>
    _$StringModelImpl(
      key: json['key'] as String,
      value: json['value'] as String,
      parameters: (json['parameters'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      quantityValues: (json['quantityValues'] as List<dynamic>?)
          ?.map((e) => QuantityStringModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      quantityParameter: json['quantityParameter'] as String?,
    );

Map<String, dynamic> _$$StringModelImplToJson(_$StringModelImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
      'parameters': instance.parameters,
      'quantityValues': instance.quantityValues,
      'quantityParameter': instance.quantityParameter,
    };
