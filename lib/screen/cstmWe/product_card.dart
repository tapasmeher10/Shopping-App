import 'package:flutter/material.dart';
import 'package:saree_center/config/models/product_model.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final double widthFactor;

  const ProductCard({Key? key, required this.product, this.widthFactor = 2.5})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double widthValue = MediaQuery.of(context).size.width / widthFactor;
    return InkWell(
      onTap: ()
        {
          Navigator.pushNamed(context, '/product',arguments: product);
        }
      ,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            child: Container(
              height: 150.0,
               width: widthValue,
              child: Image.network(
                product.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Positioned(
          //   top: 5,
          //   child: Container(
          //     width: MediaQuery.of(context).size.width /widthFactor,
          //     height: 5,
          //     decoration: BoxDecoration(
          //       color: Colors.black.withAlpha(5),
          //     ),
          //   ),
          // ),
          Positioned(
            top: 100,
            left: 5,
            child: Container(
              alignment: Alignment.bottomLeft,
              width: MediaQuery.of(context).size.width /widthFactor,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.black.withAlpha(5),
              ),
              child: Column(children: [
                Text(
                  product.name,
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(color: Colors.white),
                ),
                Text(
                  "\$${product.price}",
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(color: Colors.white),
                )
              ]),
            ),
          )
        ],
      ),
    );
  }
}
