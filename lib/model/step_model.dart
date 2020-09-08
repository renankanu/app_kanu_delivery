import 'package:app_kanu_delivery/src/utils/images.dart';

class StepModel {
  final int id;
  final String title;
  final String text;
  final String image;

  StepModel({this.id, this.title, this.text, this.image});

  static List<StepModel> list = [
    StepModel(
      id: 1,
      title: 'Choose your order',
      text: "Browse the menu\nand order directly from\nthe application",
      image: Images.splash01,
    ),
    StepModel(
      id: 2,
      title: 'Food delivery',
      text:
          "Your order will be\nimmediately collected and\nsent by our courier",
      image: Images.splash02,
    ),
    StepModel(
      id: 3,
      title: 'Bon appetit',
      text: "Enjoy tasty and hot food, we try to \nbe is better for you.",
      image: Images.splash03,
    ),
  ];
}
