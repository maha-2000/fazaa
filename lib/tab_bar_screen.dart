import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:fazaa/constants.dart';
import 'package:fazaa/tabs_map.dart';
import 'package:flutter/material.dart';

import 'navigation_drawer_widget.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({super.key});

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  int _activePageIndex = 0;
  final PageController _pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:  NavigationDrawerWidget(),
      appBar: AppBar(
        actions:  [
          IconButton(
           icon: const Icon(Icons.logout),
            onPressed: () {},
          ),
        ],
        elevation: 40,
        backgroundColor: kPrimaryColor,
        title: const Text(""),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (value) {
          setState(() {
            _activePageIndex = value;
          });
        },
        children: [
          pageDetails[0]["pageName"],
          pageDetails[1]["pageName"],
          pageDetails[2]["pageName"],
          pageDetails[3]["pageName"],
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: kPrimaryColor,
        backgroundColor: Colors.white38,
        index: _activePageIndex,
        onTap: (value) {
          _pageController.animateToPage(
            value,
            duration: const Duration(microseconds: 400),
            curve: Curves.ease,
          );
        },
        items: const [
          Icon(
            Icons.home,
          ),
          Icon(
            Icons.widgets,
          ),
          Icon(
            Icons.report,
          ),
          Icon(
            Icons.integration_instructions,
          ),
        ],
      ),
    );
  }
}
