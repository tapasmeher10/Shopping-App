import 'package:flutter/material.dart';
import 'package:saree_center/config/models/product_model.dart';
import 'package:saree_center/screen/cstmWe/product_card.dart';

class ProductCarousel extends StatelessWidget {
  final List<Product> products;

  const ProductCarousel({
    Key? key,
    required this.products,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        // child: ListView.builder(
        //     shrinkWrap: true,
        //     padding: const EdgeInsets.symmetric(horizontal: 20,
        //     vertical: 10),
        //     scrollDirection: Axis.horizontal,
        //     itemCount:products.length,
        //     itemBuilder: (context, index) {
        //       return Padding(
        //         padding: const EdgeInsets.only(right:3.0),
        //         child: ProductCard(product:products[index]),
        //       );
        //     }),
        SizedBox(
      height: 350,
      child: Card(
        child: Container(
          child: GridView.builder(
            physics: NeverScrollableScrollPhysics(), 
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 1.15),
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return Center(
                  child: ProductCard(
                    product: Product.products[index],
                    widthFactor: 2.4,
                  ),
                );
              }),
        ),
      ),
    );
  }
}
