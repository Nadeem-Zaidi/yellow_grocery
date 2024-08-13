import 'package:dio/dio.dart';
import 'package:grocery_yellow/models/categories/category.dart'; // Adjust the import path as per your project structure

final dio = Dio();

Future<List<Category>> categoryList() async {
  try {
    Response categoryResponse = await dio.get(
      'http://192.168.1.9:3001/grocery/categories/mobile',
      queryParameters: {'page': 1},
    );

    // Access the 'data' field from the response
    List<Category> categories = (categoryResponse.data['data'] as List)
        .map((json) => Category.fromJson(json))
        .toList();

    return categories;
  } catch (e) {
    print('Error fetching categories: $e');
    rethrow; // Return null or handle the error case appropriately
  }
}

Future<List<Category>> fetchSectionByNameAndVisibility(
    String sectionName) async {
  try {
    Response categoryResponse = await dio.get(
      'http://192.168.1.9:3001/grocery/$sectionName/mobile',
      queryParameters: {'page': 1},
    );

    // Access the 'data' field from the response
    List<Category> categories = (categoryResponse.data['data'] as List)
        .map((json) => Category.fromJson(json))
        .toList();

    return categories;
  } catch (e) {
    print('Error fetching categories: $e');
    rethrow; // Return null or handle the error case appropriately
  }
}

Future<List<Map<String, dynamic>>> fetchSections(int pageNumber) async {
  List<Map<String, dynamic>> result = [];
  try {
    Response sections = await dio.get(
      'http://192.168.1.9:3001/grocery/dashboard',
      queryParameters: {
        'pageNumber': pageNumber.toString(),
      },
    );

    for (var i in sections.data['data']) {
      if (i['data'] is List) {
        Map<String, dynamic> map = {};
        map["type"] = i['type'];
        map["data"] = i['data'];
        result.add(map);
      } else {
        print("Error: 'data' is not a List in section: $i");
      }
    }

    return [];
  } catch (error) {
    print('Error fetching sections: $error');
    rethrow;
  }
}
