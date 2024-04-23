
import 'package:flutter_modular/flutter_modular.dart';
import 'package:listinha/src/configuration/configuration_page.dart';
import 'package:listinha/src/home/home_modular.dart';
import 'package:listinha/src/shared/store/app_store.dart';

class AppModule extends Module {
  @override
  // TODO: implement binds
  List<Bind> get binds => [
    Bind.singleton((i) => AppStore())
  ];
  @override
  // TODO: implement routes
  List<ModularRoute> get routes => [
    ChildRoute('/config', child: (context, args) => const ConfigurationPage()),
    ModuleRoute('/home', module: HomeModule()),
  ];
}




