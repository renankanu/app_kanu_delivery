import 'package:app_kanu_delivery/app/constants.dart';
import 'package:app_kanu_delivery/app/pages/home/widgets/body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedItemIndex = 2;
  @override
  Widget build(BuildContext context) {
    GestureDetector buildNavBarItem(IconData icon, int index) {
      return GestureDetector(
        onTap: () {
          setState(() {
            _selectedItemIndex = index;
          });
        },
        child: Container(
          width: MediaQuery.of(context).size.width / 5,
          height: 60,
          decoration: index == _selectedItemIndex
              ? BoxDecoration(
                  border:
                      Border(bottom: BorderSide(width: 4, color: kGreenPea)),
                  gradient: LinearGradient(colors: [
                    kGreenPea.withOpacity(0.3),
                    kGreenPea.withOpacity(0.016),
                  ], begin: Alignment.bottomCenter, end: Alignment.topCenter))
              : BoxDecoration(),
          child: Icon(
            icon,
            color: index == _selectedItemIndex
                ? kGreenPea
                : Colors.black.withOpacity(0.6),
          ),
        ),
      );
    }

    return Scaffold(
      bottomNavigationBar: Row(
        children: [
          buildNavBarItem(Icons.search, 0),
          buildNavBarItem(Icons.favorite_border, 1),
          buildNavBarItem(Icons.home, 2),
          buildNavBarItem(Icons.chat_bubble_outline, 3),
          buildNavBarItem(Icons.person, 4),
        ],
      ),
      body: SafeArea(
        child: Body(),
      ),
    );
  }
}
