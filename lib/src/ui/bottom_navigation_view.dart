import 'package:flutter/material.dart';

abstract class BottomNavigationViewStatus {
  void onTapChangeIndex(int position);
}

class BottomNavigationView extends StatefulWidget {
  final BottomNavigationViewStatus listener;

  BottomNavigationView(this.listener);

  @override
  _BottomNavigationViewState createState() => new _BottomNavigationViewState(listener);
}

class _BottomNavigationViewState extends State<BottomNavigationView> {
  List<BottomNavigationBarItem> _kBottomNavigationItems;
  BottomNavigationViewStatus _kTapListener;
  int _currentIndex = 0;

  _BottomNavigationViewState(this._kTapListener);

  @override
  void initState() {
    super.initState();
    _kBottomNavigationItems = <BottomNavigationBarItem>[
      new BottomNavigationBarItem(
        icon: new Icon(Icons.search),
        title: new Text("Search"),
      ),
      new BottomNavigationBarItem(
        icon: new Icon(Icons.settings),
        title: new Text("Settings"),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return new BottomNavigationBar(
      items: _kBottomNavigationItems,
      currentIndex: _currentIndex,
      onTap: (int index) {
        setState(() {
          _currentIndex = index;
          _kTapListener.onTapChangeIndex(index);
        });
      }
    );
  }
}