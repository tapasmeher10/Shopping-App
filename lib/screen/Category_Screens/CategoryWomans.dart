import 'package:flutter/material.dart';
import 'package:saree_center/screen/cstmWe/CustomAppBar.dart';
import 'package:saree_center/screen/cstmWe/CustomNavbar.dart';

class CategoryWomans extends StatelessWidget {
  static const String routeName = '/womans';
  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => CategoryWomans(),
    );
  }
  const CategoryWomans({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Womans'),
      bottomNavigationBar: CustomNavBar(),
      
    );
  }
}