import 'package:flutter/material.dart';
import 'package:saree_center/screen/cstmWe/CustomAppBar.dart';
import 'package:saree_center/screen/cstmWe/CustomNavbar.dart';

class CategoryKids extends StatelessWidget {
  static const String routeName = '/kids';
  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => CategoryKids(),
    );
  }
  const CategoryKids({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Kids'),
      bottomNavigationBar: CustomNavBar(),
      
    );
  }
}