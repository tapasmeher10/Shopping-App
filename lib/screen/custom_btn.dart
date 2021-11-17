import 'package:flutter/material.dart';
import 'package:saree_center/screen/register_page.dart';
class CustomBtn extends StatelessWidget {
  final String text;
  final bool outlineBtn;
  CustomBtn({required this.text,required this.outlineBtn});


  @override
  Widget build(BuildContext context) {
    bool _outlineBtn= outlineBtn ?? true;
    return GestureDetector(
      onTap:(){
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => RegisterPage()));
    },
      child: Container(
        height: 55.0,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: _outlineBtn ? Colors.transparent : Colors.amber,
          border: Border.all(
            color: Colors.amberAccent,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(11.0)
        ),
        margin: EdgeInsets.symmetric(
          horizontal: 24.0,
          vertical: 24.0
        ),
        child: Text(text ?? "Text",
          style:TextStyle(fontSize: 16.0,color: Colors.black,
          fontWeight: FontWeight.w600) ,),
      ),
    );
  }
}
