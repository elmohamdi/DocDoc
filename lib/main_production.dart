import 'package:doc_advance/core/di/dependency_injection.dart';
import 'package:doc_advance/core/routing/app_router.dart';
import 'package:doc_advance/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  setupGetIt();
  // this to fix texts being hidden  bug in flutter screen util in release mode
  await ScreenUtil.ensureScreenSize();
  runApp(DocApp(appRouter: AppRouter()));
}
