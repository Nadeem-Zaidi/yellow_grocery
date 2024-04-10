//  child: Column(
//           children: [
//             Container(
//               padding: const EdgeInsets.all(5),
//               alignment: Alignment.center,
//               margin: const EdgeInsets.only(top: 25),
//               height: 35,
//               child: BlocBuilder<CategoryProductBloc, CategoryProductState>(
//                 builder: (context, state) {
//                   if (state.fetchResult.isNotEmpty &&
//                       state.errorMessage == null) {
//                     List<Category> categories = state.fetchResult;

//                     return ListView.separated(
//                       scrollDirection: Axis.horizontal,
//                       itemCount: categories.length,
//                       itemBuilder: (context, index) {
//                         return Container(
//                           padding: const EdgeInsets.all(4),
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(10),
//                               color: Theme.of(context).colorScheme.primary),
//                           child: GestureDetector(
//                               onTap: () {
//                                 context.read<CategoryProductBloc>().add(
//                                     CategoryProductByCategory(
//                                         categories[index].id));
//                               },
//                               child: Text(categories[index].name)),
//                         );
//                       },
//                       separatorBuilder: (context, index) {
//                         return const SizedBox(
//                             width: 8); // Replace with your separator widget
//                       },
//                     );
//                   }
//                   return Container();
//                 },
//               ),
//             ),
//             const Divider(),
//             const SizedBox(
//               height: 15,
//             ),
//             BlocConsumer<CategoryProductBloc, CategoryProductState>(
//                 builder: ((context, state) {
//                   if (state.fetchProducts.isNotEmpty &&
//                       state.errorMessage == null) {
//                     var products = state.fetchProducts;
//                     return SizedBox(
//                       height: 535,
//                       child: ListView.builder(
//                         itemCount: products.length,
//                         itemBuilder: (context, index) {
//                           return GestureDetector(
//                             onTap: () {
//                               Navigator.of(context).push(
//                                 MaterialPageRoute(
//                                   builder: (context) =>
//                                       BlocProvider<ProductDetailBloc>(
//                                     create: (context) => ProductDetailBloc(PS())
//                                       ..add(ProductDetailView(
//                                           products[index].id,
//                                           products[index].vid)),
//                                     child:
//                                         ProductDetail(vid: products[index].vid),
//                                   ),
//                                 ),
//                               );
//                             },
//                             child: Container(
//                               child: ProductItem(
//                                   productName: products[index].name,
//                                   brandName: products[index].brand,
//                                   price: products[index].price,
//                                   newPrice: products[index].newPrice,
//                                   discount: products[index].discount,
//                                   unit: products[index].unit,
//                                   pack_size: products[index].packSize,
//                                   url: products[index].images[0].toString()),
//                             ),
//                           );
//                         },
//                       ),
//                     );
//                   }
//                   return Container();
//                 }),
//                 listener: (context, state) {})
//           ],
//         ),