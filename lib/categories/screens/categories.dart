import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocery_yellow/categories/category_bloc/category_bloc.dart';
import 'package:grocery_yellow/categories/widgets/category_items.dart';
import '../../category_gen_files/category.pb.dart' as cb;
import '../../grp/client.dart';
import '../../postgresql_test_product_category/category_product_bloc/category_product_bloc.dart';
import '../../proto_files/product.pb.dart';
import '../../postgresql_test_product_category/screens/products.dart' as ps;

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: double.infinity,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(onTap: () {
                // context.read<CategoryBloc>().add(
                //     PreviousEvent(context.read<CategoryBloc>().state.parent));
              }, child: BlocBuilder<CategoryBloc, CategoryState>(
                builder: (context, state) {
                  // ignore: unrelated_type_equality_checks
                  if (state.parent != 1) {
                    return Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.navigate_before))
                      ],
                    );
                  }
                  return const Text("Category");
                },
              )),
              const Text(
                "More Categories",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          BlocConsumer<CategoryBloc, CategoryState>(
            listener: (context, state) {
              // do stuff here based on BlocA's state
            },
            // buildWhen: (previous, current) => current.fetchResult.isNotEmpty,
            builder: (context, state) {
              if (state.fetchResult.isNotEmpty && state.errorMessage == null) {
                List<cb.Category> category = state.fetchResult;

                return Column(
                  children: [
                    SizedBox(
                      height: 140,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: category.length,
                        itemBuilder: ((context, index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) =>
                                      BlocProvider<CategoryProductBloc>(
                                    create: (context) =>
                                        CategoryProductBloc(PS())
                                          ..add(
                                            CategoryProductSubCategory(
                                              category[index].id,
                                            ),
                                          )
                                          ..add(CategoryProductByCategory(
                                              category[index].id)),
                                    child: const ps.Product(),
                                  ),
                                ),
                              );
                            },
                            child: CategoryItem(
                              name: category[index].name,
                              url: category[index].images[0],
                            ),
                          );
                        }),
                        separatorBuilder: (context, index) {
                          return const SizedBox(
                              width: 8); // Replace with your separator widget
                        },
                      ),
                    ),
                  ],
                );
              }
              return Container();
            },
          )
        ],
      ),
    );
  }
}
