import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homescreen"),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Text("Hello"),
      ),
    );
  }
}

class secondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Text("Second Screen says Hello"),
      ),
    );
  }
}

class thirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third Screen"),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Text("Third screen says hello"),
      ),
    );
  }
}

List<Widget> widgetList = [MyHomePage(), secondScreen(), thirdScreen()];
