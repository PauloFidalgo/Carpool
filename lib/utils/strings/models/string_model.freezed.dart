// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'string_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StringModel _$StringModelFromJson(Map<String, dynamic> json) {
  return _StringModel.fromJson(json);
}

/// @nodoc
mixin _$StringModel {
  String get key => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  List<String>? get parameters => throw _privateConstructorUsedError;
  List<QuantityStringModel>? get quantityValues =>
      throw _privateConstructorUsedError;
  String? get quantityParameter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StringModelCopyWith<StringModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StringModelCopyWith<$Res> {
  factory $StringModelCopyWith(
          StringModel value, $Res Function(StringModel) then) =
      _$StringModelCopyWithImpl<$Res, StringModel>;
  @useResult
  $Res call(
      {String key,
      String value,
      List<String>? parameters,
      List<QuantityStringModel>? quantityValues,
      String? quantityParameter});
}

/// @nodoc
class _$StringModelCopyWithImpl<$Res, $Val extends StringModel>
    implements $StringModelCopyWith<$Res> {
  _$StringModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = null,
    Object? parameters = freezed,
    Object? quantityValues = freezed,
    Object? quantityParameter = freezed,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      parameters: freezed == parameters
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      quantityValues: freezed == quantityValues
          ? _value.quantityValues
          : quantityValues // ignore: cast_nullable_to_non_nullable
              as List<QuantityStringModel>?,
      quantityParameter: freezed == quantityParameter
          ? _value.quantityParameter
          : quantityParameter // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StringModelImplCopyWith<$Res>
    implements $StringModelCopyWith<$Res> {
  factory _$$StringModelImplCopyWith(
          _$StringModelImpl value, $Res Function(_$StringModelImpl) then) =
      __$$StringModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String key,
      String value,
      List<String>? parameters,
      List<QuantityStringModel>? quantityValues,
      String? quantityParameter});
}

/// @nodoc
class __$$StringModelImplCopyWithImpl<$Res>
    extends _$StringModelCopyWithImpl<$Res, _$StringModelImpl>
    implements _$$StringModelImplCopyWith<$Res> {
  __$$StringModelImplCopyWithImpl(
      _$StringModelImpl _value, $Res Function(_$StringModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = null,
    Object? parameters = freezed,
    Object? quantityValues = freezed,
    Object? quantityParameter = freezed,
  }) {
    return _then(_$StringModelImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      parameters: freezed == parameters
          ? _value._parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      quantityValues: freezed == quantityValues
          ? _value._quantityValues
          : quantityValues // ignore: cast_nullable_to_non_nullable
              as List<QuantityStringModel>?,
      quantityParameter: freezed == quantityParameter
          ? _value.quantityParameter
          : quantityParameter // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StringModelImpl extends _StringModel {
  const _$StringModelImpl(
      {required this.key,
      required this.value,
      final List<String>? parameters,
      final List<QuantityStringModel>? quantityValues,
      this.quantityParameter})
      : _parameters = parameters,
        _quantityValues = quantityValues,
        super._();

  factory _$StringModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StringModelImplFromJson(json);

  @override
  final String key;
  @override
  final String value;
  final List<String>? _parameters;
  @override
  List<String>? get parameters {
    final value = _parameters;
    if (value == null) return null;
    if (_parameters is EqualUnmodifiableListView) return _parameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<QuantityStringModel>? _quantityValues;
  @override
  List<QuantityStringModel>? get quantityValues {
    final value = _quantityValues;
    if (value == null) return null;
    if (_quantityValues is EqualUnmodifiableListView) return _quantityValues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? quantityParameter;

  @override
  String toString() {
    return 'StringModel(key: $key, value: $value, parameters: $parameters, quantityValues: $quantityValues, quantityParameter: $quantityParameter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StringModelImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value) &&
            const DeepCollectionEquality()
                .equals(other._parameters, _parameters) &&
            const DeepCollectionEquality()
                .equals(other._quantityValues, _quantityValues) &&
            (identical(other.quantityParameter, quantityParameter) ||
                other.quantityParameter == quantityParameter));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      key,
      value,
      const DeepCollectionEquality().hash(_parameters),
      const DeepCollectionEquality().hash(_quantityValues),
      quantityParameter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StringModelImplCopyWith<_$StringModelImpl> get copyWith =>
      __$$StringModelImplCopyWithImpl<_$StringModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StringModelImplToJson(
      this,
    );
  }
}

abstract class _StringModel extends StringModel {
  const factory _StringModel(
      {required final String key,
      required final String value,
      final List<String>? parameters,
      final List<QuantityStringModel>? quantityValues,
      final String? quantityParameter}) = _$StringModelImpl;
  const _StringModel._() : super._();

  factory _StringModel.fromJson(Map<String, dynamic> json) =
      _$StringModelImpl.fromJson;

  @override
  String get key;
  @override
  String get value;
  @override
  List<String>? get parameters;
  @override
  List<QuantityStringModel>? get quantityValues;
  @override
  String? get quantityParameter;
  @override
  @JsonKey(ignore: true)
  _$$StringModelImplCopyWith<_$StringModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
