// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CategoryState {
  List<Category> get fetchResult => throw _privateConstructorUsedError;
  String get parent => throw _privateConstructorUsedError;
  bool get listFetched => throw _privateConstructorUsedError;
  bool get productFetched => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryStateCopyWith<CategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryStateCopyWith<$Res> {
  factory $CategoryStateCopyWith(
          CategoryState value, $Res Function(CategoryState) then) =
      _$CategoryStateCopyWithImpl<$Res, CategoryState>;
  @useResult
  $Res call(
      {List<Category> fetchResult,
      String parent,
      bool listFetched,
      bool productFetched,
      String? errorMessage});
}

/// @nodoc
class _$CategoryStateCopyWithImpl<$Res, $Val extends CategoryState>
    implements $CategoryStateCopyWith<$Res> {
  _$CategoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchResult = null,
    Object? parent = null,
    Object? listFetched = null,
    Object? productFetched = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      fetchResult: null == fetchResult
          ? _value.fetchResult
          : fetchResult // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      parent: null == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as String,
      listFetched: null == listFetched
          ? _value.listFetched
          : listFetched // ignore: cast_nullable_to_non_nullable
              as bool,
      productFetched: null == productFetched
          ? _value.productFetched
          : productFetched // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryStateImplCopyWith<$Res>
    implements $CategoryStateCopyWith<$Res> {
  factory _$$CategoryStateImplCopyWith(
          _$CategoryStateImpl value, $Res Function(_$CategoryStateImpl) then) =
      __$$CategoryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Category> fetchResult,
      String parent,
      bool listFetched,
      bool productFetched,
      String? errorMessage});
}

/// @nodoc
class __$$CategoryStateImplCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$CategoryStateImpl>
    implements _$$CategoryStateImplCopyWith<$Res> {
  __$$CategoryStateImplCopyWithImpl(
      _$CategoryStateImpl _value, $Res Function(_$CategoryStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchResult = null,
    Object? parent = null,
    Object? listFetched = null,
    Object? productFetched = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$CategoryStateImpl(
      fetchResult: null == fetchResult
          ? _value._fetchResult
          : fetchResult // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      parent: null == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as String,
      listFetched: null == listFetched
          ? _value.listFetched
          : listFetched // ignore: cast_nullable_to_non_nullable
              as bool,
      productFetched: null == productFetched
          ? _value.productFetched
          : productFetched // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CategoryStateImpl implements _CategoryState {
  const _$CategoryStateImpl(
      {required final List<Category> fetchResult,
      this.parent = "1",
      this.listFetched = false,
      this.productFetched = false,
      this.errorMessage = null})
      : _fetchResult = fetchResult;

  final List<Category> _fetchResult;
  @override
  List<Category> get fetchResult {
    if (_fetchResult is EqualUnmodifiableListView) return _fetchResult;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fetchResult);
  }

  @override
  @JsonKey()
  final String parent;
  @override
  @JsonKey()
  final bool listFetched;
  @override
  @JsonKey()
  final bool productFetched;
  @override
  @JsonKey()
  final String? errorMessage;

  @override
  String toString() {
    return 'CategoryState(fetchResult: $fetchResult, parent: $parent, listFetched: $listFetched, productFetched: $productFetched, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryStateImpl &&
            const DeepCollectionEquality()
                .equals(other._fetchResult, _fetchResult) &&
            (identical(other.parent, parent) || other.parent == parent) &&
            (identical(other.listFetched, listFetched) ||
                other.listFetched == listFetched) &&
            (identical(other.productFetched, productFetched) ||
                other.productFetched == productFetched) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_fetchResult),
      parent,
      listFetched,
      productFetched,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryStateImplCopyWith<_$CategoryStateImpl> get copyWith =>
      __$$CategoryStateImplCopyWithImpl<_$CategoryStateImpl>(this, _$identity);
}

abstract class _CategoryState implements CategoryState {
  const factory _CategoryState(
      {required final List<Category> fetchResult,
      final String parent,
      final bool listFetched,
      final bool productFetched,
      final String? errorMessage}) = _$CategoryStateImpl;

  @override
  List<Category> get fetchResult;
  @override
  String get parent;
  @override
  bool get listFetched;
  @override
  bool get productFetched;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$CategoryStateImplCopyWith<_$CategoryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
