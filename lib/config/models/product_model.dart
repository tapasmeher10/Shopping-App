import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class Product extends Equatable {
  final String name;
  final String category;
  final String imageUrl;
  final double price;
  final bool isRecommended;
  final bool isPopular;

  const Product({
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.price,
    required this.isRecommended,
    required this.isPopular,
  });
  static Product fromSnapshot(DocumentSnapshot snap){
    Product product=Product(name: snap['name'],
        category: snap['category'],
        imageUrl: snap['imageUrl'],
        price:snap['price'],
        isRecommended:snap['isRecommended'],
        isPopular:snap['isPopular'],);
    return product;
  }

  @override
  List<Object?> get props =>
      [name, category, imageUrl, price, isPopular, isRecommended];

  static List<Product> products = [
    Product(
        name: 'Silk1',
        category: 'Silk',
        imageUrl:
            'https://cdn.shopify.com/s/files/1/2155/9601/products/DSC_4763.jpg?v=1625549836',
        price: 3600,
        isRecommended: true,
        isPopular: false),
        Product(
        name: 'Silk2',
        category: 'Silk',
        imageUrl:
            'https://5.imimg.com/data5/OI/CC/UV/SELLER-19885899/indian-ethnic-designer-kanchipuram-wedding-silk-purple-saree-500x500.jpg',
        price: 2700,
        isRecommended: true,
        isPopular: true),
        Product(
        name: 'Silk3',
        category: 'Silk',
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjLLA5HHd_9ZsZFJ0C8wYaJHDBXBZ_Bn0NOTtrsNq2B8GnSCkV-j2svwRfOtbSOEGP3pw&usqp=CAU',
        price: 2000,
        isRecommended: false,
        isPopular: true),
        Product(
        name: 'Silk4',
        category: 'Silk',
        imageUrl:
            'http://cdn.shopify.com/s/files/1/2180/5487/products/0017I900311113_1_1200x1200.jpg',
        price: 3300,
        isRecommended: true,
        isPopular: true),
        Product(
        name: 'Silk5',
        category: 'Silk',
        imageUrl:
            'http://cdn.shopify.com/s/files/1/2155/4255/products/IMG_0570copy.jpg?v=1620216037',
        price: 2000,
        isRecommended: true,
        isPopular: true),
        Product(
        name: 'Silk6',
        category: 'Silk',
        imageUrl:
            'https://static.kankatala.com/media/catalog/product/cache/1/image/1200x800/9df78eab33525d08d6e5fb8d27136e95/4/3/4320336_2_1.jpg',
        price: 1800,
        isRecommended: false,
        isPopular: true),
        Product(
        name: 'Silk7',
        category: 'Silk',
        imageUrl:
            'https://static.kankatala.com/media/catalog/product/cache/1/image/1200x800/9df78eab33525d08d6e5fb8d27136e95/3/8/3855645_2.jpg',
        price: 3000,
        isRecommended: true,
        isPopular: true),
        Product(
        name: 'Silk8',
        category: 'Silk',
        imageUrl:
            'https://i.pinimg.com/originals/78/6f/8e/786f8ebe915f6632887eeee7fccab836.jpg',
        price: 2500,
        isRecommended: true,
        isPopular: false),
        
  ];
}
