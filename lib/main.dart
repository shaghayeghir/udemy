import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:udemy3/constants.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ExampleApp(),
    );
  }
}

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: NavigationExample());
  }
}

class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
            indicatorShape: BeveledRectangleBorder(
              borderRadius: BorderRadius.circular(2),
            ),
            backgroundColor: Colors.black,
            indicatorColor: Colors.white.withOpacity(0.5),
            labelTextStyle: MaterialStateProperty.all(const TextStyle(color: Colors.white))),
        child: NavigationBar(
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          selectedIndex: currentPageIndex,
          destinations: <Widget>[
            NavigationDestination(
              icon: mySvgIcon(starIcon),
              selectedIcon: mySelectedSvgIcon(starIcon),
              label: 'Featured',
            ),
            NavigationDestination(
              icon: mySvgIcon(searchIcon),
              selectedIcon: mySelectedSvgIcon(searchIcon),
              label: 'Featured',
            ),
            NavigationDestination(
              icon: mySvgIcon(playIcon),
              selectedIcon: mySelectedSvgIcon(playIcon),
              label: 'Featured',
            ),
            NavigationDestination(
              icon: mySvgIcon(loveIcon),
              selectedIcon: mySelectedSvgIcon(loveIcon),
              label: 'Featured',
            ),
            NavigationDestination(
              icon: mySvgIcon(userIcon),
              selectedIcon: mySelectedSvgIcon(userIcon),
              label: 'Featured',
            ),
          ],
        ),
      ),
      body: <Widget>[
        tabScreen(Colors.pink.shade100, 'star'),
        tabScreen(Colors.blue.shade100, 'search'),
        tabScreen(Colors.green.shade100, 'play list'),
        tabScreen(Colors.purple.shade100, 'wish list'),
        tabScreen(Colors.orange.shade100, 'account'),
      ][currentPageIndex],
    );
  }
}
