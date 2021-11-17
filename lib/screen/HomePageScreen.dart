import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:saree_center/config/models/category_model.dart';
import 'package:saree_center/config/models/models.dart';
import 'package:saree_center/screen/Category_card/Category_Card.dart';
import 'package:saree_center/screen/Flash_screen.dart';
import 'package:saree_center/screen/cstmWe/section_title.dart';
import 'package:saree_center/screen/cstmWe/widgets.dart';
import 'SideBar.dart';
import 'cstmWe/CustomAppBar.dart';
import 'cstmWe/CustomNavbar.dart';
import 'cstmWe/Hero_Carousel_Card.dart';
import 'cstmWe/product_card.dart';
import 'cstmWe/product_carousel.dart';
import 'Category_card/Category_Card.dart';
import 'Category_card/Categry_model.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';
  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => HomeScreen(),
    );
  }

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Saree Center'),
      bottomNavigationBar: CustomNavBar(),
      drawer: SideDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 1.4,
                  viewportFraction: 0.9,
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                  enableInfiniteScroll: false,
                  autoPlay: true,
                ),
                items: Catagory.categories
                    .map((catagory) => HeroCarouselCard(catagory: catagory))
                    .toList(),
              ),
            ),
            //category
              SizedBox(
                height: 120,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    
                    Flexible(
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap:() {
            Navigator.pushNamed(
              context,
              '/womans',
            );
          } ,
                            child: Container(
                              
                              height: 100.0,
                              decoration: new BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: new DecorationImage(
                                      fit: BoxFit.scaleDown,
                                      image: new NetworkImage(
                                          "https://assets.myntassets.com/dpr_1.5,q_60,w_400,c_limit,fl_progressive/assets/images/11099560/2020/1/10/de32fb9a-c466-4651-82a6-523709df08131578658929671-UF-Women-Blue--Pink-Printed-Maxi-Dress-41578658928124-1.jpg")
                                  )
                              )
                                          ),
                          ),
                                        Text("Woman",
                    textScaleFactor: 1)
                        ],
                      ),
                    ),
                    
                Flexible(
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap:() {
            Navigator.pushNamed(
              context,
              '/mens',
            );
          } ,
                        child: Container(
                              
                              height: 100.0,
                              decoration: new BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: new DecorationImage(
                                      fit: BoxFit.fill,
                                      image: new NetworkImage(
                                          "https://5.imimg.com/data5/SC/WI/MY-38592683/blazers-for-man-and-woman-500x500.jpg")
                                  )
                              )
                        ),
                      ),
                      Text("Mans",
                    textScaleFactor: 1)
                    ],
                  ),
                ),Flexible(
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap:() {
            Navigator.pushNamed(
              context,
              '/kids',
            );
          } ,
                        child: Container(
                              
                              height: 100.0,
                              decoration: new BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: new DecorationImage(
                                      fit: BoxFit.fill,
                                      image: new NetworkImage(
                                          "https://cdn.trendhunterstatic.com/thumbs/sustainable-fashion-for-kids.jpeg")
                                  )
                              )
                        ),
                      ),
                      Text("Kids",
                    textScaleFactor: 1)
                    ],
                  ),
                ),Flexible(
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap:() {
            Navigator.pushNamed(
              context,
              '/womans',
            );
          } ,
                        child: Container(
                              
                              height: 100.0,
                              decoration: new BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: new DecorationImage(
                                      fit: BoxFit.fill,
                                      image: new NetworkImage(
                                          "https://m.media-amazon.com/images/I/81Zopi98+tL._UL1500_.jpg")
                                  )
                              )
                        ),
                      ),
                      Text("Fashion",
                    textScaleFactor: 1)
                    ],
                  ),
                )
                  ],
                ),
              )

            ,
            //Flash sale
            GestureDetector(
              onTap: () {
            Navigator.pushNamed(
              context,
              '/flashsale',
            );
          },
              child: Padding(
                padding: const EdgeInsets.only(left: 5,top: 0,right: 5,bottom: 0),
                child: Container(
                  child: Card(
                    child: Image.network(
                        "https://image.freepik.com/free-vector/new-arrival-flash-sale-banner-template_1361-1654.jpg"),
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(20, 0, 0, 0),
                        Color.fromARGB(0, 0, 0, 0)
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0,top: 0,right: 10,bottom: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SectionTitle(
                    title: 'RECOMANDED',
                  ),
                  ButtonTheme(
                    minWidth: 17.0,
                    height: 15.0,
                    child: RaisedButton(
                      
                      onPressed: (){},
                      color: Colors.blueAccent,
                      
                                  child: Row(
                    children: <Widget>[
                      Text(
                        'View All',
                        style: TextStyle(color: Colors.white),
                      ),
                      Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                      ),
                    ],
                                  ),
                                ),
                  ),
                ],
              ),
            ),

            //product carousel
            // //product Card

            ProductCarousel(
                products: Product.products
                    .where((product) => product.isRecommended)
                    .toList()),
            Padding(
              padding: const EdgeInsets.only(left: 0,top: 0,right: 10,bottom: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SectionTitle(
                    title: 'MOST POPULAR',
                  ),
                  ButtonTheme(
                    minWidth: 17.0,
                    height: 15.0,
                    child: RaisedButton(
                      
                      onPressed: (){},
                      color: Colors.blueAccent,
                      
                                  child: Row(
                    children: <Widget>[
                      Text(
                        'View All',
                        style: TextStyle(color: Colors.white),
                      ),
                      Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                      ),
                    ],
                                  ),
                                ),
                  ),
                ],
              ),
            ),
            ProductCarousel(
                products: Product.products
                    .where((product) => product.isPopular)
                    .toList())
          ],
        ),
      ),
    );
  }
}
