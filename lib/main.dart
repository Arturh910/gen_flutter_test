import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:gen_test/src/modules/app/app_modules.dart';
import 'package:gen_test/src/modules/app/app_widgets.dart';

Future<void> main() async {
  return runApp(
    ModularApp(module: AppModules(), child: const AppWidget()),
  );
}
