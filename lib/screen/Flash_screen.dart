import 'package:flutter/material.dart';
import 'package:saree_center/config/models/Flash_product.dart';
import 'package:saree_center/config/models/models.dart';
import 'package:saree_center/screen/cstmWe/flash_card.dart';
import 'package:saree_center/screen/cstmWe/product_card.dart';
import 'cstmWe/CustomAppBar.dart';

class FlashSale extends StatelessWidget {
  static const String routeName = '/flashsale';
  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => FlashSale(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(title: 'Flash Sale'),
        // body: GridView.builder(
        //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //         crossAxisCount: 2, childAspectRatio: 1.15),
        //     itemCount: 3,
        //     itemBuilder: (BuildContext context, int index) {
        //       return FlashCard(flaproducts: FlashProduct.flaproducts[0]);
        //       // return FlashCard();
        //     })
        body: GridView.builder(
          padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 1.15),
                itemCount: Product.products.length,
            itemBuilder: (BuildContext context, int index) {
              return Center(
                child: ProductCard(
                  product: Product.products[index],
                  widthFactor: 2.4,
                ),
              );
            }));
  }
}
