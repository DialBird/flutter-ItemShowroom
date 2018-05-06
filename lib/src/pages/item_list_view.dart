import 'package:flutter/material.dart';
import 'package:item_showroom/src/pages/item_display_view.dart';

class ItemListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
      length: 5,
      child: new Scaffold(
        appBar: new AppBar(
          leading: new IconButton(
            icon: new Icon(Icons.menu),
            onPressed: () {
              print('Pushed');
            },
          ),
          title: new Text('Item ShowRoom', style: TextStyle(fontFamily: 'Timeburner', fontWeight: FontWeight.w700)),
          bottom: new TabBar(
            tabs: <Widget>[
              new Tab(text: 'shirts'),
              new Tab(text: 'shose'),
              new Tab(text: 'pants'),
              new Tab(text: 'bags'),
              new Tab(text: 'wallets'),
            ],
          ),
        ),
        body: new TabBarView(
          children: <Widget>[
            new ItemDisplayView('shirts'),
            new ItemDisplayView('shoes'),
            new Icon(Icons.directions_bike),
            new Icon(Icons.directions_transit),
            new Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}