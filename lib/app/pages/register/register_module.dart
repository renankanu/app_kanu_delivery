import 'package:app_kanu_delivery/app/pages/register/register_screen.dart';
import 'package:flutter_modular/flutter_modular.dart';

class RegisterModule extends ChildModule {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(
          "/login",
          child: (_, args) => RegisterScreen(),
          transition: TransitionType.downToUp,
        ),
      ];

  static Inject get to => Inject<RegisterModule>.of();
}
