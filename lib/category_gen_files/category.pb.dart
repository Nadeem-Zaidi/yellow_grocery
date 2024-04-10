//
//  Generated code. Do not modify.
//  source: category.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// Define message formats
class CategoryEmptyRequest extends $pb.GeneratedMessage {
  factory CategoryEmptyRequest() => create();
  CategoryEmptyRequest._() : super();
  factory CategoryEmptyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CategoryEmptyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CategoryEmptyRequest', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CategoryEmptyRequest clone() => CategoryEmptyRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CategoryEmptyRequest copyWith(void Function(CategoryEmptyRequest) updates) => super.copyWith((message) => updates(message as CategoryEmptyRequest)) as CategoryEmptyRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CategoryEmptyRequest create() => CategoryEmptyRequest._();
  CategoryEmptyRequest createEmptyInstance() => create();
  static $pb.PbList<CategoryEmptyRequest> createRepeated() => $pb.PbList<CategoryEmptyRequest>();
  @$core.pragma('dart2js:noInline')
  static CategoryEmptyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CategoryEmptyRequest>(create);
  static CategoryEmptyRequest? _defaultInstance;
}

class CategoryByIdRequest extends $pb.GeneratedMessage {
  factory CategoryByIdRequest({
    $core.String? categoryId,
  }) {
    final $result = create();
    if (categoryId != null) {
      $result.categoryId = categoryId;
    }
    return $result;
  }
  CategoryByIdRequest._() : super();
  factory CategoryByIdRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CategoryByIdRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CategoryByIdRequest', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'categoryId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CategoryByIdRequest clone() => CategoryByIdRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CategoryByIdRequest copyWith(void Function(CategoryByIdRequest) updates) => super.copyWith((message) => updates(message as CategoryByIdRequest)) as CategoryByIdRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CategoryByIdRequest create() => CategoryByIdRequest._();
  CategoryByIdRequest createEmptyInstance() => create();
  static $pb.PbList<CategoryByIdRequest> createRepeated() => $pb.PbList<CategoryByIdRequest>();
  @$core.pragma('dart2js:noInline')
  static CategoryByIdRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CategoryByIdRequest>(create);
  static CategoryByIdRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get categoryId => $_getSZ(0);
  @$pb.TagNumber(1)
  set categoryId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCategoryId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCategoryId() => clearField(1);
}

class CategoryByParentIdRequest extends $pb.GeneratedMessage {
  factory CategoryByParentIdRequest({
    $core.String? parentId,
  }) {
    final $result = create();
    if (parentId != null) {
      $result.parentId = parentId;
    }
    return $result;
  }
  CategoryByParentIdRequest._() : super();
  factory CategoryByParentIdRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CategoryByParentIdRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CategoryByParentIdRequest', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'parentId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CategoryByParentIdRequest clone() => CategoryByParentIdRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CategoryByParentIdRequest copyWith(void Function(CategoryByParentIdRequest) updates) => super.copyWith((message) => updates(message as CategoryByParentIdRequest)) as CategoryByParentIdRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CategoryByParentIdRequest create() => CategoryByParentIdRequest._();
  CategoryByParentIdRequest createEmptyInstance() => create();
  static $pb.PbList<CategoryByParentIdRequest> createRepeated() => $pb.PbList<CategoryByParentIdRequest>();
  @$core.pragma('dart2js:noInline')
  static CategoryByParentIdRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CategoryByParentIdRequest>(create);
  static CategoryByParentIdRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get parentId => $_getSZ(0);
  @$pb.TagNumber(1)
  set parentId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasParentId() => $_has(0);
  @$pb.TagNumber(1)
  void clearParentId() => clearField(1);
}

class Category extends $pb.GeneratedMessage {
  factory Category({
    $core.String? id,
    $core.String? name,
    $core.Iterable<$core.String>? images,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (images != null) {
      $result.images.addAll(images);
    }
    return $result;
  }
  Category._() : super();
  factory Category.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Category.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Category', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..pPS(3, _omitFieldNames ? '' : 'images')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Category clone() => Category()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Category copyWith(void Function(Category) updates) => super.copyWith((message) => updates(message as Category)) as Category;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Category create() => Category._();
  Category createEmptyInstance() => create();
  static $pb.PbList<Category> createRepeated() => $pb.PbList<Category>();
  @$core.pragma('dart2js:noInline')
  static Category getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Category>(create);
  static Category? _defaultInstance;

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
  $core.List<$core.String> get images => $_getList(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
