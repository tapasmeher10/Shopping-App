// @dart=2.9
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:saree_center/authentication/auth_service.dart';
import 'package:saree_center/config/app_router.dart';
import 'package:saree_center/config/theme.dart';
import 'package:saree_center/screen/HomePageScreen.dart';
import 'package:saree_center/screen/Landingpage.dart';
import 'package:saree_center/screen/LoginPage.dart';
import 'package:saree_center/screen/firstPage.dart';
import 'package:saree_center/screen/register_page.dart';
import 'package:saree_center/screen/welcome.dart';
import 'package:saree_center/services/wrapper.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthService>(
          create: (_)=>AuthService(),
        )
      ],
      child: MaterialApp(
              theme: theme(),
              // onGenerateRoute: AppRouter.onGenerateRoute,
              initialRoute: '/',
              routes: {
                '/':(context) =>Wrapper(),
                '/login':(context)=>LoginPage(),
                '/register':(context)=>RegisterPage(),
              },
              home:  
            HomeScreen(),
          // // FirstPage()
          // // LandingPage() ,
          
    ));
  }
}
