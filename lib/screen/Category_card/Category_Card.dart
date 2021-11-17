// import 'package:flutter/material.dart';
// import 'package:saree_center/screen/Category_card/Categry_model.dart';

// class CategoryCard extends StatelessWidget {
//   final Cate categor;
//   const CategoryCard({Key? key, required this.categor}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 20,
//         child: ListView.builder(
//             shrinkWrap: true,
//             padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//             scrollDirection: Axis.horizontal,
//             itemCount: 4,
//             itemBuilder: (context, index) {
//               return Padding(
//                 padding: const EdgeInsets.only(right: 3.0),
//                 child:
//                 //  ProductCard(product: products[index]),
//                 Container(
//                     width: 190.0,
//                     height: 190.0,
//                     decoration: new BoxDecoration(
//                         shape: BoxShape.circle,
//                         image: new DecorationImage(
//                             fit: BoxFit.fill,
//                             image: new NetworkImage(
//                                 categor.imageUrl)
//                         )
//                     )
//               )
//               );
//             }));
//     // Container(
//     //                 width: 190.0,
//     //                 height: 190.0,
//     //                 decoration: new BoxDecoration(
//     //                     shape: BoxShape.circle,
//     //                     image: new DecorationImage(
//     //                         fit: BoxFit.fill,
//     //                         image: new NetworkImage(
//     //                             categorys.imageUrl)
//     //                     )
//     //                 ),);
//   }
// }
