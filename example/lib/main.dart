import 'package:flutter/material.dart';
import 'package:udid/udid.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String udid = '';

  @override
  void initState() {
    super.initState();
    Udid.udid.then((s) {
      setState(() {
        udid = s;
        print(udid);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Text(udid),
        ),
      ),
    );
  }
}
