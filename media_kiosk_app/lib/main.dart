import 'package:flutter/material.dart';
import 'package:flutter_windowmanager/flutter_windowmanager.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    _enableKioskMode();
  }

  Future<void> _enableKioskMode() async {
    await FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE); // Prevents screenshots
    await FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_KEEP_SCREEN_ON); // Keeps screen on
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Media Kiosk App'),
      ),
      body: Center(
        child: Text('Kiosk Mode Enabled'),
      ),
    );
  }
}

