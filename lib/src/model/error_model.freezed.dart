// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'error_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ErrorModel _$ErrorModelFromJson(Map<String, dynamic> json) {
  return _ErrorModel.fromJson(json);
}

/// @nodoc
class _$ErrorModelTearOff {
  const _$ErrorModelTearOff();

  _ErrorModel call(
      {@JsonKey(name: 'status_message') required String statusMessage,
      bool? success,
      @JsonKey(name: 'status_code') required int statusCode}) {
    return _ErrorModel(
      statusMessage: statusMessage,
      success: success,
      statusCode: statusCode,
    );
  }

  ErrorModel fromJson(Map<String, Object?> json) {
    return ErrorModel.fromJson(json);
  }
}

/// @nodoc
const $ErrorModel = _$ErrorModelTearOff();

/// @nodoc
mixin _$ErrorModel {
  @JsonKey(name: 'status_message')
  String get statusMessage => throw _privateConstructorUsedError;
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_code')
  int get statusCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorModelCopyWith<ErrorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorModelCopyWith<$Res> {
  factory $ErrorModelCopyWith(
          ErrorModel value, $Res Function(ErrorModel) then) =
      _$ErrorModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'status_message') String statusMessage,
      bool? success,
      @JsonKey(name: 'status_code') int statusCode});
}

/// @nodoc
class _$ErrorModelCopyWithImpl<$Res> implements $ErrorModelCopyWith<$Res> {
  _$ErrorModelCopyWithImpl(this._value, this._then);

  final ErrorModel _value;
  // ignore: unused_field
  final $Res Function(ErrorModel) _then;

  @override
  $Res call({
    Object? statusMessage = freezed,
    Object? success = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(_value.copyWith(
      statusMessage: statusMessage == freezed
          ? _value.statusMessage
          : statusMessage // ignore: cast_nullable_to_non_nullable
              as String,
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ErrorModelCopyWith<$Res> implements $ErrorModelCopyWith<$Res> {
  factory _$ErrorModelCopyWith(
          _ErrorModel value, $Res Function(_ErrorModel) then) =
      __$ErrorModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'status_message') String statusMessage,
      bool? success,
      @JsonKey(name: 'status_code') int statusCode});
}

/// @nodoc
class __$ErrorModelCopyWithImpl<$Res> extends _$ErrorModelCopyWithImpl<$Res>
    implements _$ErrorModelCopyWith<$Res> {
  __$ErrorModelCopyWithImpl(
      _ErrorModel _value, $Res Function(_ErrorModel) _then)
      : super(_value, (v) => _then(v as _ErrorModel));

  @override
  _ErrorModel get _value => super._value as _ErrorModel;

  @override
  $Res call({
    Object? statusMessage = freezed,
    Object? success = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(_ErrorModel(
      statusMessage: statusMessage == freezed
          ? _value.statusMessage
          : statusMessage // ignore: cast_nullable_to_non_nullable
              as String,
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ErrorModel implements _ErrorModel {
  const _$_ErrorModel(
      {@JsonKey(name: 'status_message') required this.statusMessage,
      this.success,
      @JsonKey(name: 'status_code') required this.statusCode});

  factory _$_ErrorModel.fromJson(Map<String, dynamic> json) =>
      _$$_ErrorModelFromJson(json);

  @override
  @JsonKey(name: 'status_message')
  final String statusMessage;
  @override
  final bool? success;
  @override
  @JsonKey(name: 'status_code')
  final int statusCode;

  @override
  String toString() {
    return 'ErrorModel(statusMessage: $statusMessage, success: $success, statusCode: $statusCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ErrorModel &&
            const DeepCollectionEquality()
                .equals(other.statusMessage, statusMessage) &&
            const DeepCollectionEquality().equals(other.success, success) &&
            const DeepCollectionEquality()
                .equals(other.statusCode, statusCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(statusMessage),
      const DeepCollectionEquality().hash(success),
      const DeepCollectionEquality().hash(statusCode));

  @JsonKey(ignore: true)
  @override
  _$ErrorModelCopyWith<_ErrorModel> get copyWith =>
      __$ErrorModelCopyWithImpl<_ErrorModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ErrorModelToJson(this);
  }
}

abstract class _ErrorModel implements ErrorModel {
  const factory _ErrorModel(
      {@JsonKey(name: 'status_message') required String statusMessage,
      bool? success,
      @JsonKey(name: 'status_code') required int statusCode}) = _$_ErrorModel;

  factory _ErrorModel.fromJson(Map<String, dynamic> json) =
      _$_ErrorModel.fromJson;

  @override
  @JsonKey(name: 'status_message')
  String get statusMessage;
  @override
  bool? get success;
  @override
  @JsonKey(name: 'status_code')
  int get statusCode;
  @override
  @JsonKey(ignore: true)
  _$ErrorModelCopyWith<_ErrorModel> get copyWith =>
      throw _privateConstructorUsedError;
}
