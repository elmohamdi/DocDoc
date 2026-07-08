import 'package:doc_advance/core/di/dependency_injection.dart';
import 'package:doc_advance/core/helpers/constants.dart';
import 'package:doc_advance/core/helpers/extensions.dart';
import 'package:doc_advance/core/helpers/shared_pref_helper.dart';
import 'package:doc_advance/core/routing/app_router.dart';
import 'package:doc_advance/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  bool isLoggedInUser = false;
  setupGetIt();
  // this to fix texts being hidden  bug in flutter screen util in release mode
  await ScreenUtil.ensureScreenSize();
  await checkIfLoggedInUser();
  runApp(DocApp(appRouter: AppRouter()));
}

checkIfLoggedInUser() async {
  final userToken = await SharedPrefHelper.getString(SharedPrefKeys.userToken);
  if (!userToken.isNullOrEmpty()) {
    return true;
  } else {
    return false;
  }
}
