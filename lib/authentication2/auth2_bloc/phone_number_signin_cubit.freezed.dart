// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'phone_number_signin_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PhoneNumberSignInState {
  String get phoneNumber => throw _privateConstructorUsedError;
  String get smsCode => throw _privateConstructorUsedError;
  Option<AuthFailure> get failureOption => throw _privateConstructorUsedError;
  Option<String> get verificationIdOption => throw _privateConstructorUsedError;
  bool get isInProgress => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PhoneNumberSignInStateCopyWith<PhoneNumberSignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneNumberSignInStateCopyWith<$Res> {
  factory $PhoneNumberSignInStateCopyWith(PhoneNumberSignInState value,
          $Res Function(PhoneNumberSignInState) then) =
      _$PhoneNumberSignInStateCopyWithImpl<$Res, PhoneNumberSignInState>;
  @useResult
  $Res call(
      {String phoneNumber,
      String smsCode,
      Option<AuthFailure> failureOption,
      Option<String> verificationIdOption,
      bool isInProgress});
}

/// @nodoc
class _$PhoneNumberSignInStateCopyWithImpl<$Res,
        $Val extends PhoneNumberSignInState>
    implements $PhoneNumberSignInStateCopyWith<$Res> {
  _$PhoneNumberSignInStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? smsCode = null,
    Object? failureOption = null,
    Object? verificationIdOption = null,
    Object? isInProgress = null,
  }) {
    return _then(_value.copyWith(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      smsCode: null == smsCode
          ? _value.smsCode
          : smsCode // ignore: cast_nullable_to_non_nullable
              as String,
      failureOption: null == failureOption
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<AuthFailure>,
      verificationIdOption: null == verificationIdOption
          ? _value.verificationIdOption
          : verificationIdOption // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      isInProgress: null == isInProgress
          ? _value.isInProgress
          : isInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PhoneNumberSignInStateImplCopyWith<$Res>
    implements $PhoneNumberSignInStateCopyWith<$Res> {
  factory _$$PhoneNumberSignInStateImplCopyWith(
          _$PhoneNumberSignInStateImpl value,
          $Res Function(_$PhoneNumberSignInStateImpl) then) =
      __$$PhoneNumberSignInStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String phoneNumber,
      String smsCode,
      Option<AuthFailure> failureOption,
      Option<String> verificationIdOption,
      bool isInProgress});
}

/// @nodoc
class __$$PhoneNumberSignInStateImplCopyWithImpl<$Res>
    extends _$PhoneNumberSignInStateCopyWithImpl<$Res,
        _$PhoneNumberSignInStateImpl>
    implements _$$PhoneNumberSignInStateImplCopyWith<$Res> {
  __$$PhoneNumberSignInStateImplCopyWithImpl(
      _$PhoneNumberSignInStateImpl _value,
      $Res Function(_$PhoneNumberSignInStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? smsCode = null,
    Object? failureOption = null,
    Object? verificationIdOption = null,
    Object? isInProgress = null,
  }) {
    return _then(_$PhoneNumberSignInStateImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      smsCode: null == smsCode
          ? _value.smsCode
          : smsCode // ignore: cast_nullable_to_non_nullable
              as String,
      failureOption: null == failureOption
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<AuthFailure>,
      verificationIdOption: null == verificationIdOption
          ? _value.verificationIdOption
          : verificationIdOption // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      isInProgress: null == isInProgress
          ? _value.isInProgress
          : isInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PhoneNumberSignInStateImpl extends _PhoneNumberSignInState {
  const _$PhoneNumberSignInStateImpl(
      {required this.phoneNumber,
      required this.smsCode,
      required this.failureOption,
      required this.verificationIdOption,
      required this.isInProgress})
      : super._();

  @override
  final String phoneNumber;
  @override
  final String smsCode;
  @override
  final Option<AuthFailure> failureOption;
  @override
  final Option<String> verificationIdOption;
  @override
  final bool isInProgress;

  @override
  String toString() {
    return 'PhoneNumberSignInState(phoneNumber: $phoneNumber, smsCode: $smsCode, failureOption: $failureOption, verificationIdOption: $verificationIdOption, isInProgress: $isInProgress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneNumberSignInStateImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.smsCode, smsCode) || other.smsCode == smsCode) &&
            (identical(other.failureOption, failureOption) ||
                other.failureOption == failureOption) &&
            (identical(other.verificationIdOption, verificationIdOption) ||
                other.verificationIdOption == verificationIdOption) &&
            (identical(other.isInProgress, isInProgress) ||
                other.isInProgress == isInProgress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, smsCode,
      failureOption, verificationIdOption, isInProgress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhoneNumberSignInStateImplCopyWith<_$PhoneNumberSignInStateImpl>
      get copyWith => __$$PhoneNumberSignInStateImplCopyWithImpl<
          _$PhoneNumberSignInStateImpl>(this, _$identity);
}

abstract class _PhoneNumberSignInState extends PhoneNumberSignInState {
  const factory _PhoneNumberSignInState(
      {required final String phoneNumber,
      required final String smsCode,
      required final Option<AuthFailure> failureOption,
      required final Option<String> verificationIdOption,
      required final bool isInProgress}) = _$PhoneNumberSignInStateImpl;
  const _PhoneNumberSignInState._() : super._();

  @override
  String get phoneNumber;
  @override
  String get smsCode;
  @override
  Option<AuthFailure> get failureOption;
  @override
  Option<String> get verificationIdOption;
  @override
  bool get isInProgress;
  @override
  @JsonKey(ignore: true)
  _$$PhoneNumberSignInStateImplCopyWith<_$PhoneNumberSignInStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
