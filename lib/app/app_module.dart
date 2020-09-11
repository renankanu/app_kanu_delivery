import 'package:app_kanu_delivery/app/app_controller.dart';
import 'package:app_kanu_delivery/app/app_widget.dart';
import 'package:app_kanu_delivery/app/pages/intro/intro_screen.dart';
import 'package:app_kanu_delivery/app/pages/login/sign_in_module.dart';
import 'package:app_kanu_delivery/app/pages/sign_up/sign_up_module.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind(
          (inject) => AppController(),
        ),
      ];

  @override
  Widget get bootstrap => AppWidget();

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/', child: (_, __) => IntroScreen()),
        ModularRouter('/sign_in', module: SignInModule()),
        ModularRouter('/sign_up', module: SignUpModule()),
      ];
}
