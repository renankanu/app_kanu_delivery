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
    'Vegetarian',
    'Vegan'
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Let's eat\nQuality food",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: kGreenPea,
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                child: Center(
                  child: Icon(Icons.shopping_cart, color: Colors.white),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: TextFormField(
            decoration: InputDecoration(
              fillColor: KathensGray,
              filled: true,
              prefixIcon: Icon(
                Icons.search,
                color: Colors.grey,
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: KathensGray),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: KathensGray),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text('Category'),
        ),
        SizedBox(
          height: 10,
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
