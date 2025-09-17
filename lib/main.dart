import 'package:auth_flow/utils/theme/app_theme_data.dart';
import 'package:auth_flow/view/login/login_version_10.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Auth Flow',
      theme: AppThemeData.lightThemeData,
      home: const LoginVersion10(),
    );
  }
}
