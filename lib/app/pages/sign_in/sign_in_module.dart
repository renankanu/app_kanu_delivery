import 'package:app_kanu_delivery/app/pages/sign_in/sign_in_screen.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SignInModule extends ChildModule {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(
          "/sign_in",
          child: (_, args) => SignInScreen(),
          transition: TransitionType.noTransition,
        ),
      ];

  static Inject get to => Inject<SignInModule>.of();
}
