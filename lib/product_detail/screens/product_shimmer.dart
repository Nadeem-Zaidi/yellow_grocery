// import 'package:flutter/material.dart';

// class ProductDetailLoading extends StatelessWidget {
//   const ProductDetailLoading({super.key});

//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//     double height = MediaQuery.of(context).size.height;
//     return Container(
//       child: Column(
//         children: [
//           Container(
//             margin: EdgeInsets.only(
//               top: height * 0.020,
//             ),
//             height: height * 0.065,
//             decoration: const BoxDecoration(),
//             child: Align(
//               alignment: Alignment.topLeft,
//               child: Container(color: Colors.grey),
//             ),
//           ),
//           Container(color: Colors.grey),
//           SizedBox(height: height * 0.015),
//           const Align(
//               alignment: Alignment.topLeft,
//               child: Text(
//                 "Available In",
//               )),
//           Container(
//             height: height * 0.3,
//             child: ListView.separated(
//               itemCount: 5,
//               itemBuilder: (BuildContext context, int index) {
//                 return GestureDetector(
//                   onTap: () {},
//                   child: Stack(children: [
//                     Card(
//                       elevation: 2,
//                       color: Colors.grey,
//                       child: ListTile(
//                         leading: Container(
//                           color: Colors.grey,
//                           width: double.infinity,
//                           height: 40,
//                         ),
//                         title: Container(color: Colors.grey),
//                         subtitle: Row(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           children: [
//                             Container(color: Colors.grey),
//                             Container(color: Colors.grey),
//                           ],
//                         ),
//                       ),
//                     ),
//                     Positioned(
//                       left: width * 0.70,
//                       top: height * 0.015,
//                       child: Container(
//                         padding: EdgeInsets.all(height * 0.004),
//                         decoration: BoxDecoration(
//                             color: Theme.of(context).primaryColor,
//                             borderRadius:
//                                 BorderRadius.circular(height * 0.025)),
//                         child: Container(color: Colors.grey),
//                       ),
//                     ),
//                   ]),
//                 );
//               },
//               separatorBuilder: (context, index) =>
//                   SizedBox(height: height * 0.016),
//             ),
//           )
//         ],
//       ),
//     );
//     ;
//   }
// }
