import 'package:drawer_tab_navigation/screens/tabs/bottom/about.dart';
import 'package:drawer_tab_navigation/screens/tabs/bottom/info.dart';
import 'package:drawer_tab_navigation/screens/tabs/bottom/welcome.dart';
import 'package:drawer_tab_navigation/side_drawer.dart';
import 'package:flutter/material.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(

          title: Text(widget.title),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Welcome',
                icon: Icon(Icons.home),
                ),
              Tab(text: 'Info',
                icon: Icon(Icons.settings),
              ),
              Tab(text: 'About',
                icon: Icon(Icons.fastfood),
              ),
            ],
          ),
        ),
        drawer: SideDrawer(),
        body: TabBarView(
          children: [
            Welcome(),
            Info(),
            About(),
          ],
        )

      ),
    );
  }
}