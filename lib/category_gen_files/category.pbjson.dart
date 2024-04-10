//
//  Generated code. Do not modify.
//  source: category.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use categoryEmptyRequestDescriptor instead')
const CategoryEmptyRequest$json = {
  '1': 'CategoryEmptyRequest',
};

/// Descriptor for `CategoryEmptyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List categoryEmptyRequestDescriptor = $convert.base64Decode(
    'ChRDYXRlZ29yeUVtcHR5UmVxdWVzdA==');

@$core.Deprecated('Use categoryByIdRequestDescriptor instead')
const CategoryByIdRequest$json = {
  '1': 'CategoryByIdRequest',
  '2': [
    {'1': 'category_id', '3': 1, '4': 1, '5': 9, '10': 'categoryId'},
  ],
};

/// Descriptor for `CategoryByIdRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List categoryByIdRequestDescriptor = $convert.base64Decode(
    'ChNDYXRlZ29yeUJ5SWRSZXF1ZXN0Eh8KC2NhdGVnb3J5X2lkGAEgASgJUgpjYXRlZ29yeUlk');

@$core.Deprecated('Use categoryByParentIdRequestDescriptor instead')
const CategoryByParentIdRequest$json = {
  '1': 'CategoryByParentIdRequest',
  '2': [
    {'1': 'parent_id', '3': 1, '4': 1, '5': 9, '10': 'parentId'},
  ],
};

/// Descriptor for `CategoryByParentIdRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List categoryByParentIdRequestDescriptor = $convert.base64Decode(
    'ChlDYXRlZ29yeUJ5UGFyZW50SWRSZXF1ZXN0EhsKCXBhcmVudF9pZBgBIAEoCVIIcGFyZW50SW'
    'Q=');

@$core.Deprecated('Use categoryDescriptor instead')
const Category$json = {
  '1': 'Category',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'images', '3': 3, '4': 3, '5': 9, '10': 'images'},
  ],
};

/// Descriptor for `Category`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List categoryDescriptor = $convert.base64Decode(
    'CghDYXRlZ29yeRIOCgJpZBgBIAEoCVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIWCgZpbWFnZX'
    'MYAyADKAlSBmltYWdlcw==');

