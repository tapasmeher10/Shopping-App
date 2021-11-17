import 'package:flutter/material.dart';
import 'package:saree_center/config/models/Flash_product.dart';

class FlashCard extends StatelessWidget {
  final FlashProduct flaproducts;

  const FlashCard({
    Key? key,
    required this.flaproducts,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      body: InkWell(
        onTap: ()
          {}
        ,
        child: Card(
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                child: Container(
                  height: 150.0,
                  width: 150,
                  child: Image.network(
                    flaproducts.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 60,
                child: Container(
                  width: MediaQuery.of(context).size.width / 2.5 - 10,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.black.withAlpha(5),
                  ),
                ),
              ),
              Positioned(
                top: 100,
                left: 5,
                child: Container(
                  alignment: Alignment.bottomLeft,
                  width: MediaQuery.of(context).size.width / 2.5 - 10,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.black.withAlpha(5),
                  ),
                  child: Column(children: [
                    Text(
                      flaproducts.name,
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(color: Colors.white),
                    ),
                    Text(
                      "\$${flaproducts.price}",
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
        ),
      ),
    );
  }
}
