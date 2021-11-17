import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saree_center/config/models/models.dart';
import 'package:saree_center/screen/Category_Screens/CategoryFashion.dart';
import 'package:saree_center/screen/Category_Screens/CategoryKids.dart';
import 'package:saree_center/screen/Category_Screens/CategoryMans.dart';
import 'package:saree_center/screen/Category_Screens/CategoryWomans.dart';
import 'package:saree_center/screen/Flash_screen.dart';
import 'package:saree_center/screen/HomePageScreen.dart';
import 'package:saree_center/screen/cart/cart_screen.dart';
import 'package:saree_center/screen/cart/profile/ProfileScreen.dart';
import 'package:saree_center/screen/catalog/catalog_screen.dart';
import 'package:saree_center/screen/product/product_screen.dart';
import 'package:saree_center/screen/wishlist/wishlist_screen.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print("This is route: ${settings.name}");

    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      case HomeScreen.routeName:
        return HomeScreen.route();
      case '/cart':
        return CartScreen.route();
      case CatalogScreen.routeName:
        return CatalogScreen.route();
      case ProductScreen.routeName:
        return ProductScreen.route(product: settings.arguments as Product);
      case '/wishlist':
        return WishlistScreen.route();
      case '/womans':
        return CategoryWomans.route();
        case '/mens':
        return CategoryMans.route();
        case '/kids':
        return CategoryKids.route();
        case '/fashion':
        return CategoryFashion.route();
        case '/profile':
        return ProfileScreen.route();
        case '/flashsale':
        return FlashSale.route();

      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      settings: RouteSettings(name: '/error'),
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
      ),
    );
  }
}
