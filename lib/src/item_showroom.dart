// import 'package:item_showroom/src/pages/item_list_view.dart';
import 'package:item_showroom/src/pages/settings_view.dart';
import 'package:item_showroom/src/ui/bottom_navigation_view.dart';
import 'package:flutter/material.dart';

class ItemShowroom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Item ShowRoom',
      theme: new ThemeData(
        primaryColor: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> implements BottomNavigationViewStatus {
  Widget _bodyContent;

  @override
  void initState() {
    super.initState();

    _bodyContent = new SettingsView();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: _bodyContent,
      bottomNavigationBar: new BottomNavigationView(this),
    );
  }

  @override
  void onTapChangeIndex(int position) {
    setState(() {
      if(position == 0) {
        _bodyContent = new SettingsView();
      } else {
        _bodyContent = new SettingsView();
      }
    });
  }
}