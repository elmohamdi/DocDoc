import 'package:doc_advance/core/di/dependency_injection.dart';
import 'package:doc_advance/core/routing/app_router.dart';
import 'package:doc_advance/doc_app.dart';
import 'package:flutter/material.dart';

void main() {
  setupGetIt();
  runApp(DocApp(appRouter: AppRouter()));
}
