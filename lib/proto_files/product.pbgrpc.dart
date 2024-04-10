//
//  Generated code. Do not modify.
//  source: product.proto
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

import 'product.pb.dart' as $0;

export 'product.pb.dart';

@$pb.GrpcServiceName('Products')
class ProductsClient extends $grpc.Client {
  static final _$allProductsByCategory = $grpc.ClientMethod<$0.ProductByCategoryIdRequest, $0.Product>(
      '/Products/AllProductsByCategory',
      ($0.ProductByCategoryIdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Product.fromBuffer(value));
  static final _$allProductStream = $grpc.ClientMethod<$0.EmptyRequest, $0.Product>(
      '/Products/AllProductStream',
      ($0.EmptyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Product.fromBuffer(value));
  static final _$productDetail = $grpc.ClientMethod<$0.ProductDetailRequest, $0.Product>(
      '/Products/ProductDetail',
      ($0.ProductDetailRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Product.fromBuffer(value));

  ProductsClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseStream<$0.Product> allProductsByCategory($0.ProductByCategoryIdRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$allProductsByCategory, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseStream<$0.Product> allProductStream($0.EmptyRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$allProductStream, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseStream<$0.Product> productDetail($0.ProductDetailRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$productDetail, $async.Stream.fromIterable([request]), options: options);
  }
}

@$pb.GrpcServiceName('Products')
abstract class ProductsServiceBase extends $grpc.Service {
  $core.String get $name => 'Products';

  ProductsServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ProductByCategoryIdRequest, $0.Product>(
        'AllProductsByCategory',
        allProductsByCategory_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.ProductByCategoryIdRequest.fromBuffer(value),
        ($0.Product value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EmptyRequest, $0.Product>(
        'AllProductStream',
        allProductStream_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.EmptyRequest.fromBuffer(value),
        ($0.Product value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ProductDetailRequest, $0.Product>(
        'ProductDetail',
        productDetail_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.ProductDetailRequest.fromBuffer(value),
        ($0.Product value) => value.writeToBuffer()));
  }

  $async.Stream<$0.Product> allProductsByCategory_Pre($grpc.ServiceCall call, $async.Future<$0.ProductByCategoryIdRequest> request) async* {
    yield* allProductsByCategory(call, await request);
  }

  $async.Stream<$0.Product> allProductStream_Pre($grpc.ServiceCall call, $async.Future<$0.EmptyRequest> request) async* {
    yield* allProductStream(call, await request);
  }

  $async.Stream<$0.Product> productDetail_Pre($grpc.ServiceCall call, $async.Future<$0.ProductDetailRequest> request) async* {
    yield* productDetail(call, await request);
  }

  $async.Stream<$0.Product> allProductsByCategory($grpc.ServiceCall call, $0.ProductByCategoryIdRequest request);
  $async.Stream<$0.Product> allProductStream($grpc.ServiceCall call, $0.EmptyRequest request);
  $async.Stream<$0.Product> productDetail($grpc.ServiceCall call, $0.ProductDetailRequest request);
}
