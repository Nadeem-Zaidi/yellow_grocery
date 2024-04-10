//
//  Generated code. Do not modify.
//  source: category.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'category.pb.dart' as $0;

export 'category.pb.dart';

@$pb.GrpcServiceName('Categories')
class CategoriesClient extends $grpc.Client {
  static final _$allCategory = $grpc.ClientMethod<$0.CategoryEmptyRequest, $0.Category>(
      '/Categories/AllCategory',
      ($0.CategoryEmptyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Category.fromBuffer(value));
  static final _$categoryById = $grpc.ClientMethod<$0.CategoryByIdRequest, $0.Category>(
      '/Categories/CategoryById',
      ($0.CategoryByIdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Category.fromBuffer(value));
  static final _$categoryByParent = $grpc.ClientMethod<$0.CategoryEmptyRequest, $0.Category>(
      '/Categories/CategoryByParent',
      ($0.CategoryEmptyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Category.fromBuffer(value));

  CategoriesClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseStream<$0.Category> allCategory($0.CategoryEmptyRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$allCategory, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseStream<$0.Category> categoryById($0.CategoryByIdRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$categoryById, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseStream<$0.Category> categoryByParent($0.CategoryEmptyRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$categoryByParent, $async.Stream.fromIterable([request]), options: options);
  }
}

@$pb.GrpcServiceName('Categories')
abstract class CategoriesServiceBase extends $grpc.Service {
  $core.String get $name => 'Categories';

  CategoriesServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CategoryEmptyRequest, $0.Category>(
        'AllCategory',
        allCategory_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.CategoryEmptyRequest.fromBuffer(value),
        ($0.Category value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CategoryByIdRequest, $0.Category>(
        'CategoryById',
        categoryById_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.CategoryByIdRequest.fromBuffer(value),
        ($0.Category value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CategoryEmptyRequest, $0.Category>(
        'CategoryByParent',
        categoryByParent_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.CategoryEmptyRequest.fromBuffer(value),
        ($0.Category value) => value.writeToBuffer()));
  }

  $async.Stream<$0.Category> allCategory_Pre($grpc.ServiceCall call, $async.Future<$0.CategoryEmptyRequest> request) async* {
    yield* allCategory(call, await request);
  }

  $async.Stream<$0.Category> categoryById_Pre($grpc.ServiceCall call, $async.Future<$0.CategoryByIdRequest> request) async* {
    yield* categoryById(call, await request);
  }

  $async.Stream<$0.Category> categoryByParent_Pre($grpc.ServiceCall call, $async.Future<$0.CategoryEmptyRequest> request) async* {
    yield* categoryByParent(call, await request);
  }

  $async.Stream<$0.Category> allCategory($grpc.ServiceCall call, $0.CategoryEmptyRequest request);
  $async.Stream<$0.Category> categoryById($grpc.ServiceCall call, $0.CategoryByIdRequest request);
  $async.Stream<$0.Category> categoryByParent($grpc.ServiceCall call, $0.CategoryEmptyRequest request);
}
