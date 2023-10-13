import 'package:ar_navigation/pages/ar_page.dart';
import 'package:ar_navigation/pages/home_page.dart';
import 'package:ar_navigation/pages/map_page.dart';
import 'package:ar_navigation/pages/navigation_page.dart';
import 'package:ar_navigation/pages/settings_page.dart';
import 'package:flutter/material.dart';

class NaviBar extends StatefulWidget {
  const NaviBar({Key? key}) : super(key: key);

  @override
  State<NaviBar> createState() => _NaviBarState();
}

class _NaviBarState extends State<NaviBar> {
  List<Widget> pages = [
    const HomePage(),
    const ArPage(),
    const MapPage(),
    const SettingsPage(),
  ];
  int current = 0;

  void onTap(int index) {
    setState(() {
      current = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: pages[current],

      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 20.0),

          SizedBox(
            width: 70.0,
            height: 70.0,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NavigationPage(),
                  ),
                );
              },
              backgroundColor: Colors.amber,
              child: const Icon(Icons.qr_code_scanner),
            ),
          ),

        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: Container(
        height: 80.0,
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(width: 1.0, color: Colors.grey.shade300),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavBarItem(0, Icons.home_rounded, 'Home'),
            _buildNavBarItem(1, Icons.star_border_outlined, 'Shops'),
            const SizedBox(width: 40.0),
            _buildNavBarItem(2, Icons.location_on, 'Map'),
            _buildNavBarItem(3, Icons.settings, 'Settings'),
          ],
        ),
      ),
    );
  }

  Widget _buildNavBarItem(int index, IconData icon, String label) {
    return GestureDetector(
      onTap: () {
        onTap(index);
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
              icon,
              size:30,
              color: current == index ? Colors.black : Colors.black26),
          Text(label, style: TextStyle(color: current == index ? Colors.black : Colors.black26)),
        ],
      ),
    );
  }
}
