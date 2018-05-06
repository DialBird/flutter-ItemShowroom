import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

import 'package:item_showroom/src/models.dart';

class ItemDisplayView extends StatefulWidget {
  @override
  _ItemDisplayViewState createState() => new _ItemDisplayViewState();
}

class _ItemDisplayViewState extends State<ItemDisplayView> {
  List<Item> _items = [];

  @override
  void initState() {
    super.initState();
    // _getItems();
  }

  // _getItems() async {
  //   http.Response response = await http.get(
  //     Uri.encodeFull("http://localhost:8082/items"),
  //     headers: {
  //       "Accept": "application/json",
  //     }
  //   );

  //   List<dynamic> data = JSON.decode(response.body);
  //   setState(() {
  //     _items = data.map((item) => Item.fromJSON(item)).toList();
  //   });
  // }

  // Future<Null> refreshList() async {
  //   await Future.delayed(Duration(seconds: 2));
  //   return null;
  // }

  @override
  Widget build(BuildContext context) {
    return new Text("dsaf");
    // return new RefreshIndicator(
    //   child: new ListView.builder(
    //     padding: new EdgeInsets.all(16.0),
    //     itemCount: _items?.length,
    //     itemBuilder: (BuildContext context, int index) {
    //       return new _ItemCard(_items[index]);
    //     },
    //   ),
    //   onRefresh: refreshList,
    // );
  }
}

// class _ItemCard extends StatelessWidget {
//   final item;

//   _ItemCard(this.item);

//   @override
//   Widget build(BuildContext context) { 
//     // return new Stack(
//     //   children: <Widget>[
//     //     new Chip(label: new Text("asdf")),
//     //     new Card(
//     //       child: new Column(
//     //         children: <Widget>[
//     //           new Image.network(item.imageUrl),
//     //           new Text(item.name, style: TextStyle(fontSize: 24.0, fontFamily: 'Timeburner', fontWeight: FontWeight.w700)),
//     //           new Text(item.price.toString()),
//     //           new Text(item.description),
//     //         ],
//     //       ),
//     //     ),
//     //   ],
//     // );
//     return new Card(
//       child: new Column(
//         children: <Widget>[
//           new Chip(label: new Text("asdf")),
//           new Image.network(item.imageUrl),
//           new Text(item.name, style: TextStyle(fontSize: 24.0, fontFamily: 'Timeburner', fontWeight: FontWeight.w700)),
//           new Text(item.price.toString()),
//           new Text(item.description),
//         ],
//       ),
//     );
//   }
// }