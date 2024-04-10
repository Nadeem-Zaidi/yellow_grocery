import 'package:grpc/grpc.dart';
import '../category_gen_files/category.pbgrpc.dart';
import '../proto_files/product.pbgrpc.dart';
import 'package:grpc/src/client/http2_channel.dart' as clientChannel;

class PS {
  late clientChannel.ClientChannel channel;
  late ProductsClient productClient;
  late CategoriesClient categoryClient;

  PS._internal() {
    channel = clientChannel.ClientChannel(
      '192.168.29.96', // Replace with your server's IP or hostname
      port: 50051, // Replace with your server's port
      options: const ChannelOptions(
        credentials: ChannelCredentials
            .insecure(), // Use secure credentials in production
      ),
    );
    productClient = ProductsClient(channel);
    categoryClient = CategoriesClient(channel);
  }

  static PS? _instance;

  // Factory constructor to return the singleton instance
  factory PS() {
    _instance ??= PS._internal();
    return _instance!;
  }

  Stream<Product> getProductStream() async* {
    var responseStream = productClient.allProductStream(EmptyRequest());

    await for (var response in responseStream) {
      yield response;
    }
  }

  Stream<Category> getCategoryById(String id) async* {
    var cid = CategoryByIdRequest()..categoryId = id;
    var responseStream = categoryClient.categoryById(cid);

    await for (var response in responseStream) {
      yield response;
    }
  }

  Stream<Product> getProductByCategoryStream(String id) async* {
    var cid = ProductByCategoryIdRequest()..categoryId = id;
    var responseStream = productClient.allProductsByCategory(cid);

    await for (var response in responseStream) {
      yield response;
    }
  }

  Stream<Category> getCategoryStream() async* {
    var responseStream =
        categoryClient.categoryByParent(CategoryEmptyRequest());
    await for (var response in responseStream) {
      yield response;
    }
  }

  Stream<Product> getProductDetailStream(String pid, String vid) async* {
    var message = ProductDetailRequest();
    message.productId = pid;
    message.variationId = vid;

    var responseStream = productClient.productDetail(message);
    await for (var response in responseStream) {
      yield response;
    }
  }
}
