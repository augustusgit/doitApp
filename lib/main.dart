import 'package:doit/screens/landing_page.dart';
import 'package:doit/theme/theme.dart';
import 'package:doit/util/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color(0xFFEFEFEF), statusBarIconBrightness: Brightness.dark));
  runApp(const DoItApp());
}

class DoItApp extends StatelessWidget {
  const DoItApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: dmsTitle,
      theme: AppThemeData.lightTheme,
      darkTheme: AppThemeData.darkTheme,
      home: const LandingPage(),
    );
  }
}

