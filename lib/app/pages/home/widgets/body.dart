import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  final List<String> numbers = ['Fast food', 'Pizza'];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 60.0, vertical: 24.0),
      height: 80,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            return Container(
              child: Card(
                color: Colors.blue,
                child: Container(
                  child: Center(
                      child: Text(
                    numbers[index],
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              ),
            );
          }),
    );
  }
}
