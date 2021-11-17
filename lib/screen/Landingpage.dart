import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:saree_center/screen/Homepage.dart';
import 'package:saree_center/screen/LoginPage.dart';
import 'package:saree_center/screen/constants.dart';

class LandingPage extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          //if snapshot is error
          if (snapshot.hasError) {
            return Scaffold(
                body: Center(child: Text("Error ${snapshot.error}")));
          }
          //connection initialized
          if (snapshot.connectionState == ConnectionState.done) {

            //streambuilder can check the loggin state live
            return StreamBuilder(stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context,streamSnapshot){

              //if stream snapshot has error
              if (streamSnapshot.hasError) {
                return Scaffold(
                    body: Center(child: Text("Error ${streamSnapshot.error}")));
              }

              //connection state active -Do the user login check inside the if statement
              if(streamSnapshot.connectionState == ConnectionState.active){

                //get the user
                Object? _user = streamSnapshot.data;

                //if the user is null ,we are not logged in
                if(_user == null){
                  return LoginPage();
                }else{
                  return HomePage();
                }

              }

              //checking the auth state
              return Scaffold(
                body: Center(
                  child: Text("Checking auth......."),
                ),
              );

            },);
          }
          //connect to firebase loading
          return Scaffold(
            body: Center(
              child: Text("Initialzing app..."),
            ),
          );
        });
  }
}
