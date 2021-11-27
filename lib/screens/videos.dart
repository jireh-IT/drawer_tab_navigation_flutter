import 'package:drawer_tab_navigation/screens/tabs/top/tab1.dart';
import 'package:drawer_tab_navigation/screens/tabs/top/tab2.dart';
import 'package:drawer_tab_navigation/screens/tabs/top/tab3.dart';
import 'package:flutter/material.dart';

class Videos extends StatefulWidget {
  @override
  _VideosState createState() => _VideosState();
}

class _VideosState extends State<Videos> {
  int _index  = 0;
  final List<Widget> _tabs = [Tab1(), Tab2(), Tab3()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("Videos"),
      ),
      body: _tabs[_index],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
          onTap: (index)=>setState(() {
            _index = index;
          }),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.camera),
            label: 'Camera'
            ),
            BottomNavigationBarItem(icon: Icon(Icons.map),
                label: 'Map'
            ),
            BottomNavigationBarItem(icon: Icon(Icons.mail),
                label: 'Mail'
            ),
          ]
      ),

    );
  }
}
