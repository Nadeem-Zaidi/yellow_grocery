// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connectivity_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ConnectivityState {
  bool get internetLoading => throw _privateConstructorUsedError;
  ConnectionType? get connectionType => throw _privateConstructorUsedError;
  bool get isConnected => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConnectivityStateCopyWith<ConnectivityState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectivityStateCopyWith<$Res> {
  factory $ConnectivityStateCopyWith(
          ConnectivityState value, $Res Function(ConnectivityState) then) =
      _$ConnectivityStateCopyWithImpl<$Res, ConnectivityState>;
  @useResult
  $Res call(
      {bool internetLoading, ConnectionType? connectionType, bool isConnected});
}

/// @nodoc
class _$ConnectivityStateCopyWithImpl<$Res, $Val extends ConnectivityState>
    implements $ConnectivityStateCopyWith<$Res> {
  _$ConnectivityStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? internetLoading = null,
    Object? connectionType = freezed,
    Object? isConnected = null,
  }) {
    return _then(_value.copyWith(
      internetLoading: null == internetLoading
          ? _value.internetLoading
          : internetLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      connectionType: freezed == connectionType
          ? _value.connectionType
          : connectionType // ignore: cast_nullable_to_non_nullable
              as ConnectionType?,
      isConnected: null == isConnected
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConnectivityStateImplCopyWith<$Res>
    implements $ConnectivityStateCopyWith<$Res> {
  factory _$$ConnectivityStateImplCopyWith(_$ConnectivityStateImpl value,
          $Res Function(_$ConnectivityStateImpl) then) =
      __$$ConnectivityStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool internetLoading, ConnectionType? connectionType, bool isConnected});
}

/// @nodoc
class __$$ConnectivityStateImplCopyWithImpl<$Res>
    extends _$ConnectivityStateCopyWithImpl<$Res, _$ConnectivityStateImpl>
    implements _$$ConnectivityStateImplCopyWith<$Res> {
  __$$ConnectivityStateImplCopyWithImpl(_$ConnectivityStateImpl _value,
      $Res Function(_$ConnectivityStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? internetLoading = null,
    Object? connectionType = freezed,
    Object? isConnected = null,
  }) {
    return _then(_$ConnectivityStateImpl(
      internetLoading: null == internetLoading
          ? _value.internetLoading
          : internetLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      connectionType: freezed == connectionType
          ? _value.connectionType
          : connectionType // ignore: cast_nullable_to_non_nullable
              as ConnectionType?,
      isConnected: null == isConnected
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ConnectivityStateImpl implements _ConnectivityState {
  const _$ConnectivityStateImpl(
      {this.internetLoading = true,
      this.connectionType,
      this.isConnected = false});

  @override
  @JsonKey()
  final bool internetLoading;
  @override
  final ConnectionType? connectionType;
  @override
  @JsonKey()
  final bool isConnected;

  @override
  String toString() {
    return 'ConnectivityState(internetLoading: $internetLoading, connectionType: $connectionType, isConnected: $isConnected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectivityStateImpl &&
            (identical(other.internetLoading, internetLoading) ||
                other.internetLoading == internetLoading) &&
            (identical(other.connectionType, connectionType) ||
                other.connectionType == connectionType) &&
            (identical(other.isConnected, isConnected) ||
                other.isConnected == isConnected));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, internetLoading, connectionType, isConnected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectivityStateImplCopyWith<_$ConnectivityStateImpl> get copyWith =>
      __$$ConnectivityStateImplCopyWithImpl<_$ConnectivityStateImpl>(
          this, _$identity);
}

abstract class _ConnectivityState implements ConnectivityState {
  const factory _ConnectivityState(
      {final bool internetLoading,
      final ConnectionType? connectionType,
      final bool isConnected}) = _$ConnectivityStateImpl;

  @override
  bool get internetLoading;
  @override
  ConnectionType? get connectionType;
  @override
  bool get isConnected;
  @override
  @JsonKey(ignore: true)
  _$$ConnectivityStateImplCopyWith<_$ConnectivityStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
