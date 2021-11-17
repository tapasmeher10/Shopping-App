import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          DrawerHeader(
            child: Center(
              child: Image.asset(
                'Image/flogo.png',
              ),
            ),
            decoration: BoxDecoration(
              color: HexColor("#E50960"),
            ),
          ),
          ListTile(
            leading: Icon(Icons.border_color),
            title: Text('Feedback'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.bike_scooter),
            title: Text('About us'),
            onTap: () => {},
          ),
          ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Logout'),
              onTap: () => {}),
        ],
      ),
    );
    
  }
}
