// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'phone_auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  AuthUserModel get userModel => throw _privateConstructorUsedError;
  bool get isUserCheckedFromAuthService => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call({AuthUserModel userModel, bool isUserCheckedFromAuthService});

  $AuthUserModelCopyWith<$Res> get userModel;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userModel = null,
    Object? isUserCheckedFromAuthService = null,
  }) {
    return _then(_value.copyWith(
      userModel: null == userModel
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as AuthUserModel,
      isUserCheckedFromAuthService: null == isUserCheckedFromAuthService
          ? _value.isUserCheckedFromAuthService
          : isUserCheckedFromAuthService // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthUserModelCopyWith<$Res> get userModel {
    return $AuthUserModelCopyWith<$Res>(_value.userModel, (value) {
      return _then(_value.copyWith(userModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
          _$AuthStateImpl value, $Res Function(_$AuthStateImpl) then) =
      __$$AuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthUserModel userModel, bool isUserCheckedFromAuthService});

  @override
  $AuthUserModelCopyWith<$Res> get userModel;
}

/// @nodoc
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
      _$AuthStateImpl _value, $Res Function(_$AuthStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userModel = null,
    Object? isUserCheckedFromAuthService = null,
  }) {
    return _then(_$AuthStateImpl(
      userModel: null == userModel
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as AuthUserModel,
      isUserCheckedFromAuthService: null == isUserCheckedFromAuthService
          ? _value.isUserCheckedFromAuthService
          : isUserCheckedFromAuthService // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AuthStateImpl extends _AuthState {
  const _$AuthStateImpl(
      {required this.userModel, required this.isUserCheckedFromAuthService})
      : super._();

  @override
  final AuthUserModel userModel;
  @override
  final bool isUserCheckedFromAuthService;

  @override
  String toString() {
    return 'AuthState(userModel: $userModel, isUserCheckedFromAuthService: $isUserCheckedFromAuthService)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
            (identical(other.userModel, userModel) ||
                other.userModel == userModel) &&
            (identical(other.isUserCheckedFromAuthService,
                    isUserCheckedFromAuthService) ||
                other.isUserCheckedFromAuthService ==
                    isUserCheckedFromAuthService));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userModel, isUserCheckedFromAuthService);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);
}

abstract class _AuthState extends AuthState {
  const factory _AuthState(
      {required final AuthUserModel userModel,
      required final bool isUserCheckedFromAuthService}) = _$AuthStateImpl;
  const _AuthState._() : super._();

  @override
  AuthUserModel get userModel;
  @override
  bool get isUserCheckedFromAuthService;
  @override
  @JsonKey(ignore: true)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
