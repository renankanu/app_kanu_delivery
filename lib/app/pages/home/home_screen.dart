import 'package:app_kanu_delivery/app/constants.dart';
import 'package:app_kanu_delivery/app/pages/home/widgets/body.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                  ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
                )
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
      bottomNavigationBar: SafeArea(
        child: Row(
          children: [
            buildNavBarItem(FontAwesomeIcons.sistrix, 0),
            buildNavBarItem(FontAwesomeIcons.heart, 1),
            buildNavBarItem(FontAwesomeIcons.home, 2),
            buildNavBarItem(FontAwesomeIcons.commentAlt, 3),
            buildNavBarItem(FontAwesomeIcons.user, 4),
          ],
        ),
      ),
      body: SafeArea(
        child: Body(),
      ),
    );
  }
}
