import 'package:app_kanu_delivery/app/app_controller.dart';
import 'package:app_kanu_delivery/app/app_widget.dart';
import 'package:app_kanu_delivery/app/pages/home/home_module.dart';
import 'package:app_kanu_delivery/app/pages/intro/intro_screen.dart';
import 'package:app_kanu_delivery/app/pages/login/login_module.dart';
import 'package:app_kanu_delivery/app/pages/register/register_module.dart';
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
        ModularRouter('/login', module: LoginModule()),
        ModularRouter('/register', module: RegisterModule()),
        ModularRouter('/home', module: HomeModule()),
      ];
}
