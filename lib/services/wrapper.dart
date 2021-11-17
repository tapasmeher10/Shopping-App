import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:saree_center/authentication/User_model.dart';
import 'package:saree_center/authentication/auth_service.dart';
import 'package:saree_center/screen/HomePageScreen.dart';
import 'package:saree_center/screen/Homepage.dart';
import 'package:saree_center/screen/LoginPage.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);
    return StreamBuilder<User?>(
        stream: authService.user,
        builder: (_, AsyncSnapshot<User?> snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            final User? user = snapshot.data;
            return user == null ? LoginPage() : HomeScreen();
          } else {
            return Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        });
  }
}
