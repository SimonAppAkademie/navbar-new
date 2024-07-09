import 'package:flutter/material.dart';
import 'package:navbar/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: AppHome(),
    );
  }
}

class AppHome extends StatefulWidget {
  @override
  State<AppHome> createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: <Widget>[
          NavigationDestination(icon: Icon(Icons.ac_unit_sharp), label: "First"),
          NavigationDestination(icon: Icon(Icons.access_time_filled_outlined), label: "Second"),
          NavigationDestination(icon: Icon(Icons.account_balance), label: "Third"),
        ],
      ),
      body: <Widget>[
        /// Home page
        widgetList[0],
        widgetList[1],
        widgetList[2],
      ][currentPageIndex],
    );
  }
}
