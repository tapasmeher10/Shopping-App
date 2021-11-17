import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  const CustomAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Container(
        color: Colors.transparent,
        padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 20),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline3!.copyWith(
            color: HexColor("#E50914"),
            fontFamily: 'Ephesis'),
        ),
      ),
      iconTheme: IconThemeData(color: Colors.amber[300]),
      actions: [
        IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/wishlist');
            },
            icon: Icon(Icons.favorite))
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50.0);
}
