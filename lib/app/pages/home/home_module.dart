import 'package:app_kanu_delivery/app/pages/home/home_screen.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(
          "/home",
          child: (_, args) => HomeScreen(),
          transition: TransitionType.upToDown,
        ),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
