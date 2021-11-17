import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: new Stack(
          fit: StackFit.expand,
          children:<Widget> [
            new Image(image: AssetImage("Image/back.jpg"),
              fit: BoxFit.cover,
            ),
            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget> [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(height: 200,width:200,image: new AssetImage("Image/flogo.png")
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      child: Text("WELCOME",style: TextStyle(fontSize: 28,letterSpacing: 3,fontWeight: FontWeight.bold),),
                ),SizedBox(height: 10,),Row(

                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      child: Text("We don't design clothes. We design dreams",style: TextStyle(fontSize: 14,letterSpacing: 2,fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.italic,color:HexColor("#757171"), ),),
                    )
                  ],
                ),

              ],
            ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      MaterialButton(height: 50,
                          minWidth: 300,
                          color:  HexColor("#F19CC1"),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              side: BorderSide(color: Colors.black87)),
                          textColor: Colors.white,
                          child: Text("Log In",style: TextStyle(letterSpacing: 1,fontSize: 14,),),
                          onPressed: () {}
                      ),
                      SizedBox(height: 10,),
                      MaterialButton(height: 50,
                          minWidth: 300,
                          color: HexColor("#F19CC1"),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              side: BorderSide(color: Colors.black87),
                          ),
                          textColor: Colors.white,
                          child: Text("Sign Up",style: TextStyle(letterSpacing: 1,fontSize: 14,),),
                          onPressed: () {}
                      ),
                      SizedBox(height: 50,)
                    ],
                  ),
                )

          ],
        ),
      ),
    );
  }
}
