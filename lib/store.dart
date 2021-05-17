import 'package:flutter/material.dart';
import 'package:getwidget/components/appbar/gf_appbar.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yat_flutter_final_project/apps.dart';
import 'package:yat_flutter_final_project/books.dart';
import 'package:yat_flutter_final_project/games.dart';
import 'package:yat_flutter_final_project/movies.dart';
import 'package:yat_flutter_final_project/navigation_drawer.dart';
import 'package:yat_flutter_final_project/search_bar.dart';

class Store extends StatefulWidget {
  @override
  _StoreState createState() => _StoreState();
}
class _StoreState extends State<Store> with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;
  Widget current_widget;

  @override
  void initState() {
    super.initState();
    getPref();
    current_widget = _list[0];
  }

  final List <Widget> _list = [
    Games(),
    Apps(),
    Books(),
    Movies(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      current_widget = _list[_selectedIndex];
    });
  }
  var email;
  getPref()async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    email = preferences.getString("email");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GFAppBar(
        title: Text("Store"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: StoreSearch());
            },
          ),
        ],
      ),
      body: current_widget,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        backgroundColor: Colors.white,
        iconSize: 30,
        onTap: _onItemTapped,
        elevation: 5,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.videogame_asset, color: Color(0xff01865f),),
            title: Text('Games'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.apps, color: Color(0xff01865f),),
            title: Text('Apps'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.book, color: Color(0xff01865f),),
              title: Text('Books')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.movie, color: Color(0xff01865f),),
              title: Text('Movies')
          )
        ],
      ),
      drawer: MyNavigationDrawer(),

    );
  }
}