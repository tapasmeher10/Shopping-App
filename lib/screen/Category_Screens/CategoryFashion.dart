import 'package:flutter/material.dart';
import 'package:saree_center/screen/cstmWe/CustomAppBar.dart';
import 'package:saree_center/screen/cstmWe/CustomNavbar.dart';

class CategoryFashion extends StatelessWidget {
  static const String routeName = '/fashion';
  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => CategoryFashion(),
    );
  }
  const CategoryFashion({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Fashion'),
      bottomNavigationBar: CustomNavBar(),
      
    );
  }
}