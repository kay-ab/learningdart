import 'package:flutter/material.dart';
import 'injection_container.dart';
import 'package:learningdart/features/auth/presentation/pages/home/daily_news.dart';
import 'config/theme/app_themes.dart';

Future<void> main() async {
  await initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: const DailyNews(),
    );
  }
}
