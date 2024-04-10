// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CategoryProductState {
  List<Category> get fetchResult => throw _privateConstructorUsedError;
  List<Product> get fetchProducts => throw _privateConstructorUsedError;
  String get parent => throw _privateConstructorUsedError;
  bool get listFetched => throw _privateConstructorUsedError;
  bool get productFetched => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  bool? get isProgress => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryProductStateCopyWith<CategoryProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryProductStateCopyWith<$Res> {
  factory $CategoryProductStateCopyWith(CategoryProductState value,
          $Res Function(CategoryProductState) then) =
      _$CategoryProductStateCopyWithImpl<$Res, CategoryProductState>;
  @useResult
  $Res call(
      {List<Category> fetchResult,
      List<Product> fetchProducts,
      String parent,
      bool listFetched,
      bool productFetched,
      String? errorMessage,
      bool? isProgress});
}

/// @nodoc
class _$CategoryProductStateCopyWithImpl<$Res,
        $Val extends CategoryProductState>
    implements $CategoryProductStateCopyWith<$Res> {
  _$CategoryProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchResult = null,
    Object? fetchProducts = null,
    Object? parent = null,
    Object? listFetched = null,
    Object? productFetched = null,
    Object? errorMessage = freezed,
    Object? isProgress = freezed,
  }) {
    return _then(_value.copyWith(
      fetchResult: null == fetchResult
          ? _value.fetchResult
          : fetchResult // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      fetchProducts: null == fetchProducts
          ? _value.fetchProducts
          : fetchProducts // ignore: cast_nullable_to_non_nullable
              as List<Product>,
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
      isProgress: freezed == isProgress
          ? _value.isProgress
          : isProgress // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryProductStateImplCopyWith<$Res>
    implements $CategoryProductStateCopyWith<$Res> {
  factory _$$CategoryProductStateImplCopyWith(_$CategoryProductStateImpl value,
          $Res Function(_$CategoryProductStateImpl) then) =
      __$$CategoryProductStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Category> fetchResult,
      List<Product> fetchProducts,
      String parent,
      bool listFetched,
      bool productFetched,
      String? errorMessage,
      bool? isProgress});
}

/// @nodoc
class __$$CategoryProductStateImplCopyWithImpl<$Res>
    extends _$CategoryProductStateCopyWithImpl<$Res, _$CategoryProductStateImpl>
    implements _$$CategoryProductStateImplCopyWith<$Res> {
  __$$CategoryProductStateImplCopyWithImpl(_$CategoryProductStateImpl _value,
      $Res Function(_$CategoryProductStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchResult = null,
    Object? fetchProducts = null,
    Object? parent = null,
    Object? listFetched = null,
    Object? productFetched = null,
    Object? errorMessage = freezed,
    Object? isProgress = freezed,
  }) {
    return _then(_$CategoryProductStateImpl(
      fetchResult: null == fetchResult
          ? _value._fetchResult
          : fetchResult // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      fetchProducts: null == fetchProducts
          ? _value._fetchProducts
          : fetchProducts // ignore: cast_nullable_to_non_nullable
              as List<Product>,
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
      isProgress: freezed == isProgress
          ? _value.isProgress
          : isProgress // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$CategoryProductStateImpl implements _CategoryProductState {
  const _$CategoryProductStateImpl(
      {required final List<Category> fetchResult,
      required final List<Product> fetchProducts,
      this.parent = "1",
      this.listFetched = false,
      this.productFetched = false,
      this.errorMessage = null,
      this.isProgress = false})
      : _fetchResult = fetchResult,
        _fetchProducts = fetchProducts;

  final List<Category> _fetchResult;
  @override
  List<Category> get fetchResult {
    if (_fetchResult is EqualUnmodifiableListView) return _fetchResult;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fetchResult);
  }

  final List<Product> _fetchProducts;
  @override
  List<Product> get fetchProducts {
    if (_fetchProducts is EqualUnmodifiableListView) return _fetchProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fetchProducts);
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
  @JsonKey()
  final bool? isProgress;

  @override
  String toString() {
    return 'CategoryProductState(fetchResult: $fetchResult, fetchProducts: $fetchProducts, parent: $parent, listFetched: $listFetched, productFetched: $productFetched, errorMessage: $errorMessage, isProgress: $isProgress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryProductStateImpl &&
            const DeepCollectionEquality()
                .equals(other._fetchResult, _fetchResult) &&
            const DeepCollectionEquality()
                .equals(other._fetchProducts, _fetchProducts) &&
            (identical(other.parent, parent) || other.parent == parent) &&
            (identical(other.listFetched, listFetched) ||
                other.listFetched == listFetched) &&
            (identical(other.productFetched, productFetched) ||
                other.productFetched == productFetched) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isProgress, isProgress) ||
                other.isProgress == isProgress));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_fetchResult),
      const DeepCollectionEquality().hash(_fetchProducts),
      parent,
      listFetched,
      productFetched,
      errorMessage,
      isProgress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryProductStateImplCopyWith<_$CategoryProductStateImpl>
      get copyWith =>
          __$$CategoryProductStateImplCopyWithImpl<_$CategoryProductStateImpl>(
              this, _$identity);
}

abstract class _CategoryProductState implements CategoryProductState {
  const factory _CategoryProductState(
      {required final List<Category> fetchResult,
      required final List<Product> fetchProducts,
      final String parent,
      final bool listFetched,
      final bool productFetched,
      final String? errorMessage,
      final bool? isProgress}) = _$CategoryProductStateImpl;

  @override
  List<Category> get fetchResult;
  @override
  List<Product> get fetchProducts;
  @override
  String get parent;
  @override
  bool get listFetched;
  @override
  bool get productFetched;
  @override
  String? get errorMessage;
  @override
  bool? get isProgress;
  @override
  @JsonKey(ignore: true)
  _$$CategoryProductStateImplCopyWith<_$CategoryProductStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
