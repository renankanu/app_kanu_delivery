import 'package:app_kanu_delivery/app/pages/sign_up/sign_up_screen.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SignUpModule extends ChildModule {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(
          "/login",
          child: (_, args) => SignUpScreen(),
          transition: TransitionType.downToUp,
        ),
      ];

  static Inject get to => Inject<SignUpModule>.of();
}
