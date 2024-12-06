// part of '../page.dart';
//
// class NewProduct {
//   final String image;
//   final String category;
//   final String title;
//   final String price;
//
//   const NewProduct({
//     required this.image,
//     required this.category,
//     required this.title,
//     required this.price,
//   });
// }
//
// class AllShoes extends StatelessWidget {
//   const AllShoes({super.key});
//
//   final List<NewProduct> newProducts = const [
//     NewProduct(
//         image: 'assets/images/newproduct1,png',
//         category: 'Running',
//         title: 'Ultra 4D 5 Shoes',
//         price: '1.600.000'),
//     NewProduct(
//         image: 'assets/images/newproduct2,png',
//         category: 'Court Vision 2.0 Shoes',
//         title: 'Basketball',
//         price: '2.200.000'),
//     NewProduct(
//         image: 'assets/images/newproduct3,png',
//         category: 'CLEGO® SPORT SHOES',
//         title: 'Training1',
//         price: '1.300.000'),
//
//   ];
//
//   final List<Product> products = const [
//     Product(
//         image: 'assets/images/popular,png',
//         category: 'Hiking',
//         title: 'TERREX ULTRA LOW dasdadada',
//         price: '1.200.000'),
//     Product(
//         image: 'assets/images/popular2,png',
//         category: 'COURT VISSON 2.0',
//         title: 'TRAINING',
//         price: '2.200.000'),
//     Product(
//         image: 'assets/images/popular2,png',
//         category: 'COURT VISSON 2.0',
//         title: 'TRAINING',
//         price: '2.200.000')
//
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//         padding: const EdgeInsets.only(left: 30.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const Text(
//                   'Popular Products',
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 22,
//                       fontWeight: FontWeight.w600),
//                 ),
//                 const SizedBox(
//                   height: 14,
//                 ),
//                 SizedBox(
//                   height: 270,
//                   child: ListView.separated(
//                     shrinkWrap: true,
//                     scrollDirection: Axis.horizontal,
//                     itemBuilder: (BuildContext context, int index) {
//                       final product = products[index];
//                       return Container(
//
//                         width: 215,
//                         height: 278,
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(20),
//                         ),
//                         child: Column(
//                           children: [
//                             Image.asset(
//                               product.image
//                             ),
//                             SizedBox(
//                               height: 30,
//                             ),
//                             Padding(
//                               padding: EdgeInsets.only(left: 20.0, right: 15),
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text(
//                                     product.title,
//                                     style: TextStyle(
//                                         color: AppColor.greyText,
//                                         fontSize: 12,
//                                         fontWeight: FontWeight.w400),
//                                   ),
//                                   Text(
//                                     product.category,
//                                     style: TextStyle(
//                                         color: AppColor.blackText,
//                                         fontSize: 18,
//                                         fontWeight: FontWeight.w800),
//                                     overflow: TextOverflow.ellipsis,
//                                   ),
//                                   Text(
//                                     product.price,
//                                     style: TextStyle(
//                                         color: AppColor.blueText,
//                                         fontSize: 14,
//                                         fontWeight: FontWeight.w600),
//                                   )
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       );
//                     },
//                     separatorBuilder: (BuildContext context, int index) {
//                       return const SizedBox(
//                         width: 30,
//                       );
//                     },
//                     itemCount: products.length,
//                   ),
//                 ),
//
//               ],
//             ),
//             const SizedBox(
//               height: 30,
//             ),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   'New arrival',
//                   style: TextStyle(
//                       fontSize: 22,
//                       fontWeight: FontWeight.w600,
//                       color: Colors.white),
//                 ),
//                 const SizedBox(
//                   height: 18,
//                 ),
//                 ListView.separated(
//                   shrinkWrap: true,
//                   itemBuilder: (BuildContext context, int index) {
//                     final product = newProducts[index];
//                     return  Row(
//                       children: [
//                         ClipRRect(
//                           borderRadius: BorderRadius.circular(20),
//                           child: Image.asset(product.image),
//                         ),
//                         SizedBox(width: 14,),
//                           Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(product.title,
//                               style: TextStyle(
//                                 fontSize: 12,
//                                 fontWeight: FontWeight.w400,
//                                 color: AppColor.greyText
//                             ),),
//                             SizedBox(height: 6,),
//                             Text(product.category,
//                               style: TextStyle(
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.w600,
//                                 color: Colors.white
//                             ),),
//                             SizedBox(height: 6,),
//                             Text(product.price,
//                               style: TextStyle(
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.w500,
//                                 color: AppColor.blueText
//                             ),)
//                           ],
//                         )
//                       ],
//                     );
//                   },
//                   separatorBuilder: (BuildContext context, int index) {
//                     return SizedBox(height: 30,);
//                   },
//                   itemCount: newProducts.length,
//                 ),
//               ],
//             )
//           ],
//         ));
//   }
// }
//
// class RunningShoes extends StatelessWidget {
//   const RunningShoes({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text('fdsfsdf',
//               style: TextStyle(
//                   fontSize: 12,
//                   fontWeight: FontWeight.w400,
//                   color: AppColor.greyText
//               ),),
//             SizedBox(height: 6,),
//             Text('fsdfs',
//               style: TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.w600,
//                   color: Colors.white
//               ),),
//             SizedBox(height: 6,),
//             Text('fdsfsfs',
//               style: TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.w500,
//                   color: AppColor.blueText
//               ),)
//           ],
//         ),
//       ]
//     );
//   }
// }
//
// class TrainingShoes extends StatelessWidget {
//   const TrainingShoes({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children:[
//
//       ],
//     );
//   }
// }
//
// class BasketballShoes extends StatelessWidget {
//   const BasketballShoes({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text(
//         'Basketball Shoes',
//         style: TextStyle(color: Colors.white),
//       ),
//     );
//   }
// }
//
// class FootballShoes extends StatelessWidget {
//   const FootballShoes({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text(
//         'Football Shoes',
//         style: TextStyle(color: Colors.white),
//       ),
//     );
//   }
// }
