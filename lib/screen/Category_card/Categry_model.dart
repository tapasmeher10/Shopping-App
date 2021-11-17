import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class Cate extends Equatable {
  final String name;
  final String imageUrl;

  const Cate({
    required this.name,
    required this.imageUrl,
  });

  @override
  List<Object?> get props =>
      [name, imageUrl,];

  static List<Cate> categorys = [
    Cate(
        name: 'Women',
        imageUrl:
            'https://assetscdn1.paytm.com/images/catalog/product/A/AP/APPMODELTY-CREPNEW-944998B5A29581/1609832818896_0..jpg'),
        Cate(
        name: 'Mens',
        imageUrl:
            'https://imgmedia.lbb.in/media/2020/04/5e9830a0226fec213ee0ea87_1587032224348.jpg'),

        Cate(
        name: 'Kids',
        imageUrl:
            'https://cdn.trendhunterstatic.com/thumbs/sustainable-fashion-for-kids.jpeg',
            ),
        Cate(
        name: 'Fashion',
        imageUrl:
            'https://img.pngio.com/cosmetic-product-lot-cosmetics-make-up-artist-beauty-parlour-cosmetics-beauty-png-500_353.png',
            ),
        
  ];
}
