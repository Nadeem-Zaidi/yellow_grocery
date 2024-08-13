import 'package:flutter/material.dart';
import '../../models/categories/category.dart';
import 'package:cached_network_image/cached_network_image.dart';

class Categories extends StatefulWidget {
  final int itemCount;
  final List<Category> categories;

  Categories({required this.itemCount, required this.categories, super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    if (widget.categories.isEmpty) {
      return Container(); // Render nothing if categories are empty
    }

    return ListView.builder(
      itemCount: widget.categories.length,
      itemBuilder: (BuildContext context, int categoryIndex) {
        return Container(
          margin: const EdgeInsets.only(bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.categories[categoryIndex].name,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Container(
                // Use a dynamic height based on the number of children
                height:
                    (widget.categories[categoryIndex].children?.length ?? 0) *
                        150.0 /
                        2,
                child: GridView.builder(
                  physics:
                      const NeverScrollableScrollPhysics(), // Disable GridView scrolling
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0,
                    childAspectRatio: 1, // Adjust aspect ratio as needed
                  ),
                  itemCount:
                      widget.categories[categoryIndex].children?.length ?? 0,
                  itemBuilder: (BuildContext context, int childrenIndex) {
                    return Container(
                      padding: const EdgeInsets.all(
                          5.0), // Add padding to make the images smaller
                      color: Colors.grey[200],
                      child:
                          widget.categories[categoryIndex].children != null &&
                                  widget.categories[categoryIndex]
                                          .children![childrenIndex].images !=
                                      null &&
                                  widget
                                      .categories[categoryIndex]
                                      .children![childrenIndex]
                                      .images!
                                      .isNotEmpty
                              ? CachedNetworkImage(
                                  fit: BoxFit.cover,
                                  imageUrl: widget.categories[categoryIndex]
                                      .children![childrenIndex].images![0],
                                  placeholder: (context, url) =>
                                      CircularProgressIndicator(),
                                  errorWidget: (context, url, error) =>
                                      Icon(Icons.error),
                                )
                              : Container(),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
