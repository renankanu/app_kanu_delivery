import 'package:app_kanu_delivery/app/app_controller.dart';
import 'package:app_kanu_delivery/app/app_widget.dart';
import 'package:app_kanu_delivery/app/screen/intro/intro_screen.dart';
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
        // ModularRouter(
        //   '/home',
        //   module: HomeModule(),
        // )
      ];
}
