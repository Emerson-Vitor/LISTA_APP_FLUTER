import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:listinha/src/app_module.dart';
import 'package:listinha/src/app_widget.dart';
import 'package:listinha/src/shared/themes/themes.dart';

void main() {
  runApp(
    ModularApp(
      module: AppModule(),
      child: const AppWidget(),
    ),
  );
}
