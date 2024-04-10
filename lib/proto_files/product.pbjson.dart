//
//  Generated code. Do not modify.
//  source: product.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use emptyRequestDescriptor instead')
const EmptyRequest$json = {
  '1': 'EmptyRequest',
};

/// Descriptor for `EmptyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyRequestDescriptor = $convert.base64Decode(
    'CgxFbXB0eVJlcXVlc3Q=');

@$core.Deprecated('Use productVariationRequestDescriptor instead')
const ProductVariationRequest$json = {
  '1': 'ProductVariationRequest',
  '2': [
    {'1': 'product_id', '3': 1, '4': 1, '5': 9, '10': 'productId'},
  ],
};

/// Descriptor for `ProductVariationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List productVariationRequestDescriptor = $convert.base64Decode(
    'ChdQcm9kdWN0VmFyaWF0aW9uUmVxdWVzdBIdCgpwcm9kdWN0X2lkGAEgASgJUglwcm9kdWN0SW'
    'Q=');

@$core.Deprecated('Use productDetailRequestDescriptor instead')
const ProductDetailRequest$json = {
  '1': 'ProductDetailRequest',
  '2': [
    {'1': 'product_id', '3': 1, '4': 1, '5': 9, '10': 'productId'},
    {'1': 'variation_id', '3': 2, '4': 1, '5': 9, '10': 'variationId'},
  ],
};

/// Descriptor for `ProductDetailRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List productDetailRequestDescriptor = $convert.base64Decode(
    'ChRQcm9kdWN0RGV0YWlsUmVxdWVzdBIdCgpwcm9kdWN0X2lkGAEgASgJUglwcm9kdWN0SWQSIQ'
    'oMdmFyaWF0aW9uX2lkGAIgASgJUgt2YXJpYXRpb25JZA==');

@$core.Deprecated('Use productByCategoryIdRequestDescriptor instead')
const ProductByCategoryIdRequest$json = {
  '1': 'ProductByCategoryIdRequest',
  '2': [
    {'1': 'category_id', '3': 1, '4': 1, '5': 9, '10': 'categoryId'},
  ],
};

/// Descriptor for `ProductByCategoryIdRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List productByCategoryIdRequestDescriptor = $convert.base64Decode(
    'ChpQcm9kdWN0QnlDYXRlZ29yeUlkUmVxdWVzdBIfCgtjYXRlZ29yeV9pZBgBIAEoCVIKY2F0ZW'
    'dvcnlJZA==');

@$core.Deprecated('Use allProductResponseDescriptor instead')
const AllProductResponse$json = {
  '1': 'AllProductResponse',
  '2': [
    {'1': 'product', '3': 1, '4': 3, '5': 11, '6': '.Product', '10': 'product'},
  ],
};

/// Descriptor for `AllProductResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List allProductResponseDescriptor = $convert.base64Decode(
    'ChJBbGxQcm9kdWN0UmVzcG9uc2USIgoHcHJvZHVjdBgBIAMoCzIILlByb2R1Y3RSB3Byb2R1Y3'
    'Q=');

@$core.Deprecated('Use variationDescriptor instead')
const Variation$json = {
  '1': 'Variation',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'quantity', '3': 2, '4': 1, '5': 5, '10': 'quantity'},
    {'1': 'price', '3': 3, '4': 1, '5': 2, '10': 'price'},
    {'1': 'discount', '3': 4, '4': 1, '5': 2, '10': 'discount'},
    {'1': 'newprice', '3': 5, '4': 1, '5': 2, '10': 'newprice'},
    {'1': 'unit', '3': 6, '4': 1, '5': 9, '10': 'unit'},
    {'1': 'size', '3': 7, '4': 1, '5': 9, '10': 'size'},
    {'1': 'description', '3': 8, '4': 1, '5': 9, '10': 'description'},
    {'1': 'images', '3': 9, '4': 3, '5': 9, '10': 'images'},
    {'1': 'pack_size', '3': 10, '4': 1, '5': 9, '10': 'packSize'},
  ],
};

/// Descriptor for `Variation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List variationDescriptor = $convert.base64Decode(
    'CglWYXJpYXRpb24SDgoCaWQYASABKAlSAmlkEhoKCHF1YW50aXR5GAIgASgFUghxdWFudGl0eR'
    'IUCgVwcmljZRgDIAEoAlIFcHJpY2USGgoIZGlzY291bnQYBCABKAJSCGRpc2NvdW50EhoKCG5l'
    'd3ByaWNlGAUgASgCUghuZXdwcmljZRISCgR1bml0GAYgASgJUgR1bml0EhIKBHNpemUYByABKA'
    'lSBHNpemUSIAoLZGVzY3JpcHRpb24YCCABKAlSC2Rlc2NyaXB0aW9uEhYKBmltYWdlcxgJIAMo'
    'CVIGaW1hZ2VzEhsKCXBhY2tfc2l6ZRgKIAEoCVIIcGFja1NpemU=');

@$core.Deprecated('Use productDescriptor instead')
const Product$json = {
  '1': 'Product',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'price', '3': 3, '4': 1, '5': 9, '10': 'price'},
    {'1': 'newPrice', '3': 4, '4': 1, '5': 9, '10': 'newPrice'},
    {'1': 'discount', '3': 5, '4': 1, '5': 9, '10': 'discount'},
    {'1': 'description', '3': 6, '4': 1, '5': 9, '10': 'description'},
    {'1': 'brand', '3': 7, '4': 1, '5': 9, '10': 'brand'},
    {'1': 'category', '3': 8, '4': 3, '5': 9, '10': 'category'},
    {'1': 'unit', '3': 9, '4': 1, '5': 9, '10': 'unit'},
    {'1': 'images', '3': 10, '4': 3, '5': 9, '10': 'images'},
    {'1': 'vid', '3': 11, '4': 1, '5': 9, '10': 'vid'},
    {'1': 'variation', '3': 12, '4': 3, '5': 11, '6': '.Variation', '10': 'variation'},
    {'1': 'pack_size', '3': 13, '4': 1, '5': 9, '10': 'packSize'},
  ],
};

/// Descriptor for `Product`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List productDescriptor = $convert.base64Decode(
    'CgdQcm9kdWN0Eg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEhQKBXByaWNlGA'
    'MgASgJUgVwcmljZRIaCghuZXdQcmljZRgEIAEoCVIIbmV3UHJpY2USGgoIZGlzY291bnQYBSAB'
    'KAlSCGRpc2NvdW50EiAKC2Rlc2NyaXB0aW9uGAYgASgJUgtkZXNjcmlwdGlvbhIUCgVicmFuZB'
    'gHIAEoCVIFYnJhbmQSGgoIY2F0ZWdvcnkYCCADKAlSCGNhdGVnb3J5EhIKBHVuaXQYCSABKAlS'
    'BHVuaXQSFgoGaW1hZ2VzGAogAygJUgZpbWFnZXMSEAoDdmlkGAsgASgJUgN2aWQSKAoJdmFyaW'
    'F0aW9uGAwgAygLMgouVmFyaWF0aW9uUgl2YXJpYXRpb24SGwoJcGFja19zaXplGA0gASgJUghw'
    'YWNrU2l6ZQ==');

