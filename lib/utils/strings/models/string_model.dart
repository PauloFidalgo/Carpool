import 'package:collection/collection.dart';
import 'quantity_string_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'string_model.freezed.dart';
part 'string_model.g.dart';


@freezed
class StringModel with _$StringModel {
  const StringModel._();

  const factory StringModel({
    required String key,
    required String value,
  }) = _StringModel;

  factory StringModel.fromJson(Map<String, dynamic> json) => _$StringModelFromJson(json);
}
