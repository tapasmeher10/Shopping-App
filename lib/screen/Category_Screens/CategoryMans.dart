import 'package:flutter/material.dart';
import 'package:saree_center/screen/cstmWe/CustomAppBar.dart';
import 'package:saree_center/screen/cstmWe/CustomNavbar.dart';

class CategoryMans extends StatelessWidget {
  static const String routeName = '/mans';
  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => CategoryMans(),
    );
  }
  const CategoryMans({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Mans'),
      bottomNavigationBar: CustomNavBar(),
      
    );
  }
}