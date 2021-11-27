

import 'package:flutter/material.dart';
class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Drawer(
          child: ListView(
            children: [
          UserAccountsDrawerHeader(
              accountName: Text("Jireh Kapanga"),
              accountEmail: Text("jireh.kapanga@dkkcorp.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(''),
              ),
          ),
          ListTile(
            title: Text("Home"),
            leading: Icon(Icons.home),
            onTap: (){
              Navigator.pushReplacementNamed(context, 'home');
            },
          ),
          ListTile(
            title: Text("Videos"),
            leading: Icon(Icons.personal_video),
            onTap: (){
              Navigator.pushNamed(context, 'videos');
            },
          ),
          ListTile(
            title: Text("Settings"),
            leading: Icon(Icons.settings),
            onTap: (){
              Navigator.pushNamed(context, 'settings');
            },
          )
        ],),),
      ),
    );
  }
}
