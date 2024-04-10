// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductDetailState {
  Product? get product => throw _privateConstructorUsedError;
  List<Product> get products => throw _privateConstructorUsedError;
  Variation? get variation => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  bool get productFetched => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductDetailStateCopyWith<ProductDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailStateCopyWith<$Res> {
  factory $ProductDetailStateCopyWith(
          ProductDetailState value, $Res Function(ProductDetailState) then) =
      _$ProductDetailStateCopyWithImpl<$Res, ProductDetailState>;
  @useResult
  $Res call(
      {Product? product,
      List<Product> products,
      Variation? variation,
      String? errorMessage,
      bool productFetched,
      bool isLoading});
}

/// @nodoc
class _$ProductDetailStateCopyWithImpl<$Res, $Val extends ProductDetailState>
    implements $ProductDetailStateCopyWith<$Res> {
  _$ProductDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = freezed,
    Object? products = null,
    Object? variation = freezed,
    Object? errorMessage = freezed,
    Object? productFetched = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      variation: freezed == variation
          ? _value.variation
          : variation // ignore: cast_nullable_to_non_nullable
              as Variation?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      productFetched: null == productFetched
          ? _value.productFetched
          : productFetched // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductDetailStateImplCopyWith<$Res>
    implements $ProductDetailStateCopyWith<$Res> {
  factory _$$ProductDetailStateImplCopyWith(_$ProductDetailStateImpl value,
          $Res Function(_$ProductDetailStateImpl) then) =
      __$$ProductDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Product? product,
      List<Product> products,
      Variation? variation,
      String? errorMessage,
      bool productFetched,
      bool isLoading});
}

/// @nodoc
class __$$ProductDetailStateImplCopyWithImpl<$Res>
    extends _$ProductDetailStateCopyWithImpl<$Res, _$ProductDetailStateImpl>
    implements _$$ProductDetailStateImplCopyWith<$Res> {
  __$$ProductDetailStateImplCopyWithImpl(_$ProductDetailStateImpl _value,
      $Res Function(_$ProductDetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = freezed,
    Object? products = null,
    Object? variation = freezed,
    Object? errorMessage = freezed,
    Object? productFetched = null,
    Object? isLoading = null,
  }) {
    return _then(_$ProductDetailStateImpl(
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      variation: freezed == variation
          ? _value.variation
          : variation // ignore: cast_nullable_to_non_nullable
              as Variation?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      productFetched: null == productFetched
          ? _value.productFetched
          : productFetched // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ProductDetailStateImpl implements _ProductDetailState {
  const _$ProductDetailStateImpl(
      {this.product = null,
      required final List<Product> products,
      this.variation = null,
      this.errorMessage = null,
      this.productFetched = false,
      this.isLoading = true})
      : _products = products;

  @override
  @JsonKey()
  final Product? product;
  final List<Product> _products;
  @override
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  @JsonKey()
  final Variation? variation;
  @override
  @JsonKey()
  final String? errorMessage;
  @override
  @JsonKey()
  final bool productFetched;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'ProductDetailState(product: $product, products: $products, variation: $variation, errorMessage: $errorMessage, productFetched: $productFetched, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailStateImpl &&
            (identical(other.product, product) || other.product == product) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.variation, variation) ||
                other.variation == variation) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.productFetched, productFetched) ||
                other.productFetched == productFetched) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      product,
      const DeepCollectionEquality().hash(_products),
      variation,
      errorMessage,
      productFetched,
      isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDetailStateImplCopyWith<_$ProductDetailStateImpl> get copyWith =>
      __$$ProductDetailStateImplCopyWithImpl<_$ProductDetailStateImpl>(
          this, _$identity);
}

abstract class _ProductDetailState implements ProductDetailState {
  const factory _ProductDetailState(
      {final Product? product,
      required final List<Product> products,
      final Variation? variation,
      final String? errorMessage,
      final bool productFetched,
      final bool isLoading}) = _$ProductDetailStateImpl;

  @override
  Product? get product;
  @override
  List<Product> get products;
  @override
  Variation? get variation;
  @override
  String? get errorMessage;
  @override
  bool get productFetched;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$ProductDetailStateImplCopyWith<_$ProductDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
