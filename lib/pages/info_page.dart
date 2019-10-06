import 'package:carros_flutter_web/web/utils/web.dart';
import 'package:flutter/material.dart';

class InfoPage extends StatefulWidget {
  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  _body() {
    return Container(
      padding: EdgeInsets.all(16),
      child: ListView(
        children: <Widget>[
          _font(),
          SizedBox(
            height: 20,
          ),
          _userAgent(),
        ],
      ),
    );
  }

  _userAgent() {
    return Card(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Text("UserAgent: [${userAgent()}]"),
        ),
      ),
    );
  }

  _font() {
    return Card(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Text("Font Family: ${Theme.of(context).textTheme.body1.fontFamily}"),
            SizedBox(
              height: 10,
            ),
            Text("Default  : Flutter Web"),
            SizedBox(
              height: 10,
            ),
            Text(
              "Roboto   : Flutter Web",
              style: TextStyle(fontFamily: "Roboto"),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Mansalva : Flutter Web",
              style: TextStyle(fontFamily: "Mansalva"),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Raleway  : Flutter Web",
              style: TextStyle(fontFamily: "Raleway"),
            ),
          ],
        ),
      ),
    );
  }
}
