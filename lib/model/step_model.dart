import 'package:app_kanu_delivery/src/utils/images.dart';

class StepModel {
  final int id;
  final String text;
  final String image;

  StepModel({this.id, this.text, this.image});

  static List<StepModel> list = [
    StepModel(
      id: 1,
      text: "Browse the menu\nand order directly from\nthe application",
      image: Images.splash01,
    ),
    StepModel(
      id: 2,
      text:
          "Your order will be\nimmediately collected and\nsent by our courier",
      image: Images.splash02,
    ),
    StepModel(
      id: 3,
      text: "Pick update delivery\nat your door and enjoy\ngroceries",
      image: Images.splash03,
    ),
  ];
}
