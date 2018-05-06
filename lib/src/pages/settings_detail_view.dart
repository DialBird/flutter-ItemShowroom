import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class SettingsDetailView extends StatelessWidget {
  final String title;

  SettingsDetailView({@required this.title});

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title)
      ),
      body: new Center(
        child: new Text("Detail"),
      ),
    );
  }
}