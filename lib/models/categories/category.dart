import 'package:grocery_yellow/models/interfaces/ientity.dart';

class Category {
  final String id;
  final String name;
  final String? description;
  final String? parentId;
  final String path;
  final List<String>? images;
  final List<Category>? children;

  Category({
    required this.id,
    required this.name,
    required this.path,
    this.description,
    this.parentId,
    this.images,
    this.children,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      path: json['path'] ?? '',
      description: json['description'],
      parentId: json['parent_id'],
      images: (json['images'] as List<dynamic>?)
          ?.map((image) => image as String)
          .toList(),
      children: json['children'] != null
          ? (json['children'] as List<dynamic>)
              .map((item) => Category.fromJson(item as Map<String, dynamic>))
              .toList()
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'parent_id': parentId,
      'path': path,
      'images': images,
      'children': children?.map((child) => child.toJson()).toList(),
    };
  }
}
