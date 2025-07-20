import 'package:flutter/material.dart';
import 'package:flutter_complete_project/doc_app.dart';

import 'core/di/dependancy_injection.dart';
import 'core/routing/app_router.dart';

void main() {
  setupGetIt();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}
