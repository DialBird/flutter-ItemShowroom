import 'package:flutter/material.dart';
import 'package:item_showroom/src/pages/settings_detail_view.dart';

class SettingsView extends StatefulWidget {
  @override
  _SettingsViewState createState() => new _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  bool _switchVal = true;
  double _sliderVal = 50.0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Settings'),
      ),
      body: new ListView(
        children: <Widget>[
          _paddingTitle("設定1"),
          new Container(
            color: Colors.white,
            child: new Column(
              children: <Widget>[
                new ListTile(
                  title: Text('Page1'),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () {
                    Navigator.of(context).push(
                      new MaterialPageRoute(
                        builder: (BuildContext context) {
                          return new SettingsDetailView(title: 'Page1');
                        },
                      ),
                    );
                  },
                ),
                new Divider(height: 0.0, indent: 60.0),
                new ListTile(
                  title: Text('Page2'),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () {
                    Navigator.of(context).push(
                      new MaterialPageRoute(
                        builder: (BuildContext context) {
                          return new SettingsDetailView(title: 'Page2');
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          _paddingTitle("設定2"),
          new Container(
            color: Colors.white,
            child: new Column(
              children: <Widget>[
                new ListTile(
                  title: Text('Toggle'),
                  trailing: new Switch(
                    value: _switchVal,
                    onChanged: (val) {
                      setState(() {
                        _switchVal = val;
                      });
                    },
                  ),
                ),
                new Divider(height: 0.0, indent: 60.0),
                new ListTile(
                  title: const Text('Slider'),
                  trailing: new Slider(
                    value: _sliderVal,
                    min: 0.0,
                    max: 100.0,
                    onChanged: (val) {
                      setState(() {
                        _sliderVal = val;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _paddingTitle(String title) {
  return new Padding(
    padding: new EdgeInsets.all(10.0),
    child: Text(title, style: new TextStyle(color: Colors.black38, fontSize: 12.0, fontWeight: FontWeight.bold)),
  );
}