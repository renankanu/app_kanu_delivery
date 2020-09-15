import 'package:app_kanu_delivery/app/constants.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  final List<String> numbers = ['Fast food', 'Fruits', 'Vegetable', 'Pizza'];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Let's eat\nQuality food",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Container(
          height: 40,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: numbers.length,
              itemBuilder: (context, index) {
                return Container(
                  child: Card(
                    color: kVictoria,
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                            child: Text(
                          numbers[index],
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }
}
