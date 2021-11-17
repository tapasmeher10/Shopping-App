import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:saree_center/config/models/models.dart';
import 'package:saree_center/screen/cstmWe/CustomAppBar.dart';
import 'package:saree_center/screen/cstmWe/CustomNavbar.dart';
import 'package:flutter/widgets.dart';
import 'package:saree_center/screen/cstmWe/Hero_Carousel_Card.dart';

class ProductScreen extends StatelessWidget {
  static const String routeName = '/product';

  static Route route({required Product product}) {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (context) => ProductScreen(product: product),
    );
  }

  final Product product;
  const ProductScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: product.name),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 70,
          child: Row(
            children: [IconButton(onPressed: (){}, icon: Icon(Icons.ac_unit))],
          ),
        ),
      ),
      body: ListView(children: [
        CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 1.4,
              viewportFraction: 0.9,
              enlargeCenterPage: true,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
              enableInfiniteScroll: false,
              autoPlay: true,
            ),
            items: [
              HeroCarouselCard(
                product: product,
              ),
            ]),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                alignment: Alignment.bottomCenter,
                color: Colors.amberAccent,
              ),
              Container(
                  margin: const EdgeInsets.all(5.0),
                  width: MediaQuery.of(context).size.width - 10,
                  height: 50,
                  color: Colors.amber,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            product.name,
                            style: Theme.of(context)
                                .textTheme
                                .headline5!
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                            '${product.price}',
                            style: Theme.of(context)
                                .textTheme
                                .headline5!
                                .copyWith(color: Colors.white),
                          ),
                        ]),
                  ))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: ExpansionTile(
            initiallyExpanded: true,
            title: Text('product Information',
                style: Theme.of(context).textTheme.headline3),
            children: [
              ListTile(
                title: Text(
                  'This product has a good ratings ,its made with fine fabric,cotton,it has a very genuin product',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: ExpansionTile(
            initiallyExpanded: true,
            title: Text('Delivery Information',
                style: Theme.of(context).textTheme.headline3),
            children: [
              ListTile(
                title: Text(
                  'This product has a good ratings ,its made with fine fabric,cotton,it has a very genuin product',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              )
            ],
          ),
        )
      ]),
    );

    // HeroCarouselCard(product: product,),
  }
}
