//
//  Generated code. Do not modify.
//  source: product.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class EmptyRequest extends $pb.GeneratedMessage {
  factory EmptyRequest() => create();
  EmptyRequest._() : super();
  factory EmptyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EmptyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EmptyRequest', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EmptyRequest clone() => EmptyRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EmptyRequest copyWith(void Function(EmptyRequest) updates) => super.copyWith((message) => updates(message as EmptyRequest)) as EmptyRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EmptyRequest create() => EmptyRequest._();
  EmptyRequest createEmptyInstance() => create();
  static $pb.PbList<EmptyRequest> createRepeated() => $pb.PbList<EmptyRequest>();
  @$core.pragma('dart2js:noInline')
  static EmptyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EmptyRequest>(create);
  static EmptyRequest? _defaultInstance;
}

class ProductVariationRequest extends $pb.GeneratedMessage {
  factory ProductVariationRequest({
    $core.String? productId,
  }) {
    final $result = create();
    if (productId != null) {
      $result.productId = productId;
    }
    return $result;
  }
  ProductVariationRequest._() : super();
  factory ProductVariationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProductVariationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProductVariationRequest', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'productId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProductVariationRequest clone() => ProductVariationRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProductVariationRequest copyWith(void Function(ProductVariationRequest) updates) => super.copyWith((message) => updates(message as ProductVariationRequest)) as ProductVariationRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProductVariationRequest create() => ProductVariationRequest._();
  ProductVariationRequest createEmptyInstance() => create();
  static $pb.PbList<ProductVariationRequest> createRepeated() => $pb.PbList<ProductVariationRequest>();
  @$core.pragma('dart2js:noInline')
  static ProductVariationRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProductVariationRequest>(create);
  static ProductVariationRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get productId => $_getSZ(0);
  @$pb.TagNumber(1)
  set productId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProductId() => $_has(0);
  @$pb.TagNumber(1)
  void clearProductId() => clearField(1);
}

class ProductDetailRequest extends $pb.GeneratedMessage {
  factory ProductDetailRequest({
    $core.String? productId,
    $core.String? variationId,
  }) {
    final $result = create();
    if (productId != null) {
      $result.productId = productId;
    }
    if (variationId != null) {
      $result.variationId = variationId;
    }
    return $result;
  }
  ProductDetailRequest._() : super();
  factory ProductDetailRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProductDetailRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProductDetailRequest', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'productId')
    ..aOS(2, _omitFieldNames ? '' : 'variationId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProductDetailRequest clone() => ProductDetailRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProductDetailRequest copyWith(void Function(ProductDetailRequest) updates) => super.copyWith((message) => updates(message as ProductDetailRequest)) as ProductDetailRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProductDetailRequest create() => ProductDetailRequest._();
  ProductDetailRequest createEmptyInstance() => create();
  static $pb.PbList<ProductDetailRequest> createRepeated() => $pb.PbList<ProductDetailRequest>();
  @$core.pragma('dart2js:noInline')
  static ProductDetailRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProductDetailRequest>(create);
  static ProductDetailRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get productId => $_getSZ(0);
  @$pb.TagNumber(1)
  set productId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProductId() => $_has(0);
  @$pb.TagNumber(1)
  void clearProductId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get variationId => $_getSZ(1);
  @$pb.TagNumber(2)
  set variationId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVariationId() => $_has(1);
  @$pb.TagNumber(2)
  void clearVariationId() => clearField(2);
}

class ProductByCategoryIdRequest extends $pb.GeneratedMessage {
  factory ProductByCategoryIdRequest({
    $core.String? categoryId,
  }) {
    final $result = create();
    if (categoryId != null) {
      $result.categoryId = categoryId;
    }
    return $result;
  }
  ProductByCategoryIdRequest._() : super();
  factory ProductByCategoryIdRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProductByCategoryIdRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProductByCategoryIdRequest', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'categoryId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProductByCategoryIdRequest clone() => ProductByCategoryIdRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProductByCategoryIdRequest copyWith(void Function(ProductByCategoryIdRequest) updates) => super.copyWith((message) => updates(message as ProductByCategoryIdRequest)) as ProductByCategoryIdRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProductByCategoryIdRequest create() => ProductByCategoryIdRequest._();
  ProductByCategoryIdRequest createEmptyInstance() => create();
  static $pb.PbList<ProductByCategoryIdRequest> createRepeated() => $pb.PbList<ProductByCategoryIdRequest>();
  @$core.pragma('dart2js:noInline')
  static ProductByCategoryIdRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProductByCategoryIdRequest>(create);
  static ProductByCategoryIdRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get categoryId => $_getSZ(0);
  @$pb.TagNumber(1)
  set categoryId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCategoryId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCategoryId() => clearField(1);
}

class AllProductResponse extends $pb.GeneratedMessage {
  factory AllProductResponse({
    $core.Iterable<Product>? product,
  }) {
    final $result = create();
    if (product != null) {
      $result.product.addAll(product);
    }
    return $result;
  }
  AllProductResponse._() : super();
  factory AllProductResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AllProductResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AllProductResponse', createEmptyInstance: create)
    ..pc<Product>(1, _omitFieldNames ? '' : 'product', $pb.PbFieldType.PM, subBuilder: Product.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AllProductResponse clone() => AllProductResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AllProductResponse copyWith(void Function(AllProductResponse) updates) => super.copyWith((message) => updates(message as AllProductResponse)) as AllProductResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AllProductResponse create() => AllProductResponse._();
  AllProductResponse createEmptyInstance() => create();
  static $pb.PbList<AllProductResponse> createRepeated() => $pb.PbList<AllProductResponse>();
  @$core.pragma('dart2js:noInline')
  static AllProductResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AllProductResponse>(create);
  static AllProductResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Product> get product => $_getList(0);
}

class Variation extends $pb.GeneratedMessage {
  factory Variation({
    $core.String? id,
    $core.int? quantity,
    $core.double? price,
    $core.double? discount,
    $core.double? newprice,
    $core.String? unit,
    $core.String? size,
    $core.String? description,
    $core.Iterable<$core.String>? images,
    $core.String? packSize,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (quantity != null) {
      $result.quantity = quantity;
    }
    if (price != null) {
      $result.price = price;
    }
    if (discount != null) {
      $result.discount = discount;
    }
    if (newprice != null) {
      $result.newprice = newprice;
    }
    if (unit != null) {
      $result.unit = unit;
    }
    if (size != null) {
      $result.size = size;
    }
    if (description != null) {
      $result.description = description;
    }
    if (images != null) {
      $result.images.addAll(images);
    }
    if (packSize != null) {
      $result.packSize = packSize;
    }
    return $result;
  }
  Variation._() : super();
  factory Variation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Variation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Variation', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'quantity', $pb.PbFieldType.O3)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'price', $pb.PbFieldType.OF)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'discount', $pb.PbFieldType.OF)
    ..a<$core.double>(5, _omitFieldNames ? '' : 'newprice', $pb.PbFieldType.OF)
    ..aOS(6, _omitFieldNames ? '' : 'unit')
    ..aOS(7, _omitFieldNames ? '' : 'size')
    ..aOS(8, _omitFieldNames ? '' : 'description')
    ..pPS(9, _omitFieldNames ? '' : 'images')
    ..aOS(10, _omitFieldNames ? '' : 'packSize')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Variation clone() => Variation()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Variation copyWith(void Function(Variation) updates) => super.copyWith((message) => updates(message as Variation)) as Variation;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Variation create() => Variation._();
  Variation createEmptyInstance() => create();
  static $pb.PbList<Variation> createRepeated() => $pb.PbList<Variation>();
  @$core.pragma('dart2js:noInline')
  static Variation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Variation>(create);
  static Variation? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get quantity => $_getIZ(1);
  @$pb.TagNumber(2)
  set quantity($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasQuantity() => $_has(1);
  @$pb.TagNumber(2)
  void clearQuantity() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get price => $_getN(2);
  @$pb.TagNumber(3)
  set price($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPrice() => $_has(2);
  @$pb.TagNumber(3)
  void clearPrice() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get discount => $_getN(3);
  @$pb.TagNumber(4)
  set discount($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDiscount() => $_has(3);
  @$pb.TagNumber(4)
  void clearDiscount() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get newprice => $_getN(4);
  @$pb.TagNumber(5)
  set newprice($core.double v) { $_setFloat(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasNewprice() => $_has(4);
  @$pb.TagNumber(5)
  void clearNewprice() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get unit => $_getSZ(5);
  @$pb.TagNumber(6)
  set unit($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasUnit() => $_has(5);
  @$pb.TagNumber(6)
  void clearUnit() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get size => $_getSZ(6);
  @$pb.TagNumber(7)
  set size($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasSize() => $_has(6);
  @$pb.TagNumber(7)
  void clearSize() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get description => $_getSZ(7);
  @$pb.TagNumber(8)
  set description($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasDescription() => $_has(7);
  @$pb.TagNumber(8)
  void clearDescription() => clearField(8);

  @$pb.TagNumber(9)
  $core.List<$core.String> get images => $_getList(8);

  @$pb.TagNumber(10)
  $core.String get packSize => $_getSZ(9);
  @$pb.TagNumber(10)
  set packSize($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasPackSize() => $_has(9);
  @$pb.TagNumber(10)
  void clearPackSize() => clearField(10);
}

class Product extends $pb.GeneratedMessage {
  factory Product({
    $core.String? id,
    $core.String? name,
    $core.String? price,
    $core.String? newPrice,
    $core.String? discount,
    $core.String? description,
    $core.String? brand,
    $core.Iterable<$core.String>? category,
    $core.String? unit,
    $core.Iterable<$core.String>? images,
    $core.String? vid,
    $core.Iterable<Variation>? variation,
    $core.String? packSize,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (price != null) {
      $result.price = price;
    }
    if (newPrice != null) {
      $result.newPrice = newPrice;
    }
    if (discount != null) {
      $result.discount = discount;
    }
    if (description != null) {
      $result.description = description;
    }
    if (brand != null) {
      $result.brand = brand;
    }
    if (category != null) {
      $result.category.addAll(category);
    }
    if (unit != null) {
      $result.unit = unit;
    }
    if (images != null) {
      $result.images.addAll(images);
    }
    if (vid != null) {
      $result.vid = vid;
    }
    if (variation != null) {
      $result.variation.addAll(variation);
    }
    if (packSize != null) {
      $result.packSize = packSize;
    }
    return $result;
  }
  Product._() : super();
  factory Product.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Product.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Product', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'price')
    ..aOS(4, _omitFieldNames ? '' : 'newPrice', protoName: 'newPrice')
    ..aOS(5, _omitFieldNames ? '' : 'discount')
    ..aOS(6, _omitFieldNames ? '' : 'description')
    ..aOS(7, _omitFieldNames ? '' : 'brand')
    ..pPS(8, _omitFieldNames ? '' : 'category')
    ..aOS(9, _omitFieldNames ? '' : 'unit')
    ..pPS(10, _omitFieldNames ? '' : 'images')
    ..aOS(11, _omitFieldNames ? '' : 'vid')
    ..pc<Variation>(12, _omitFieldNames ? '' : 'variation', $pb.PbFieldType.PM, subBuilder: Variation.create)
    ..aOS(13, _omitFieldNames ? '' : 'packSize')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Product clone() => Product()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Product copyWith(void Function(Product) updates) => super.copyWith((message) => updates(message as Product)) as Product;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Product create() => Product._();
  Product createEmptyInstance() => create();
  static $pb.PbList<Product> createRepeated() => $pb.PbList<Product>();
  @$core.pragma('dart2js:noInline')
  static Product getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Product>(create);
  static Product? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get price => $_getSZ(2);
  @$pb.TagNumber(3)
  set price($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPrice() => $_has(2);
  @$pb.TagNumber(3)
  void clearPrice() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get newPrice => $_getSZ(3);
  @$pb.TagNumber(4)
  set newPrice($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasNewPrice() => $_has(3);
  @$pb.TagNumber(4)
  void clearNewPrice() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get discount => $_getSZ(4);
  @$pb.TagNumber(5)
  set discount($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDiscount() => $_has(4);
  @$pb.TagNumber(5)
  void clearDiscount() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get description => $_getSZ(5);
  @$pb.TagNumber(6)
  set description($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasDescription() => $_has(5);
  @$pb.TagNumber(6)
  void clearDescription() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get brand => $_getSZ(6);
  @$pb.TagNumber(7)
  set brand($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasBrand() => $_has(6);
  @$pb.TagNumber(7)
  void clearBrand() => clearField(7);

  @$pb.TagNumber(8)
  $core.List<$core.String> get category => $_getList(7);

  @$pb.TagNumber(9)
  $core.String get unit => $_getSZ(8);
  @$pb.TagNumber(9)
  set unit($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasUnit() => $_has(8);
  @$pb.TagNumber(9)
  void clearUnit() => clearField(9);

  @$pb.TagNumber(10)
  $core.List<$core.String> get images => $_getList(9);

  @$pb.TagNumber(11)
  $core.String get vid => $_getSZ(10);
  @$pb.TagNumber(11)
  set vid($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasVid() => $_has(10);
  @$pb.TagNumber(11)
  void clearVid() => clearField(11);

  @$pb.TagNumber(12)
  $core.List<Variation> get variation => $_getList(11);

  @$pb.TagNumber(13)
  $core.String get packSize => $_getSZ(12);
  @$pb.TagNumber(13)
  set packSize($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasPackSize() => $_has(12);
  @$pb.TagNumber(13)
  void clearPackSize() => clearField(13);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
