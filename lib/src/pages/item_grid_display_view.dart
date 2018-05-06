import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

import 'package:item_showroom/src/models.dart';

class ItemGridDisplayView extends StatefulWidget {
  final type;

  ItemGridDisplayView(this.type);

  @override
  _ItemGridDisplayViewState createState() => new _ItemGridDisplayViewState(type);
}

class _ItemGridDisplayViewState extends State<ItemGridDisplayView> {
  final type;
  List<Item> _items = [];

  _ItemGridDisplayViewState(this.type);

  @override
  void initState() {
    super.initState();
    _getItems();
  }

  _getItems() async {
    http.Response response = await http.get(
      Uri.encodeFull("http://localhost:8082/$type"),
      headers: {
        "Accept": "application/json",
      }
    );

    List<dynamic> data = JSON.decode(response.body);
    setState(() {
      _items = data.map((item) => Item.fromJSON(item)).toList();
    });
  }

  Future<Null> refreshList() async {
    _getItems();
    await Future.delayed(Duration(seconds: 1));
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return new RefreshIndicator(
      child: new GridView.builder(
        padding: new EdgeInsets.all(16.0),
        itemCount: _items.length,
        itemBuilder: (BuildContext context, int index) {
          return new _ItemCard(_items[index]);
        },
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      ),
      onRefresh: refreshList,
    );
  }
}

class _ItemCard extends StatelessWidget {
  final item;

  _ItemCard(this.item);

  @override
  Widget build(BuildContext context) { 
    return new Card(
      child: new Stack(
        children: <Widget>[
          new GridTile(
            header: new Image.network(item.imageUrl),
            child: new Text("hoge"),
            footer: new Text(
              item.name,
              style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w700),
              textAlign: TextAlign.center,
            ),
          ),
          new Chip(
            backgroundColor: Colors.orange,
            labelStyle: new TextStyle(color: Colors.white),
            label: new Text("${item.price.toString()} yen")
          ),
        ],
      ),
    );
  }
}