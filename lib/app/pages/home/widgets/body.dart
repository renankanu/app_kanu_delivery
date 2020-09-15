import 'package:app_kanu_delivery/app/constants.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  final List<String> numbers = [
    'Fast food',
    'Fruits',
    'Vegetable',
    'Pizza',
    'Drinks',
    'Fitness Food',
    'Vegan'
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Let's eat\nQuality food",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Container(
            height: 40,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: numbers.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Card(
                      color: kGreenPea,
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
        ),
      ],
    );
  }
}
