import 'package:app_kanu_delivery/app/pages/login/login_screen.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginModule extends ChildModule {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(
          "/login",
          child: (_, args) => LoginScreen(),
          transition: TransitionType.noTransition,
        ),
      ];

  static Inject get to => Inject<LoginModule>.of();
}
