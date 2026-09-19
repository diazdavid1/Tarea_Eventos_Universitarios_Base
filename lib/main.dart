// lib/main.dart

import 'package:flutter/material.dart';
import 'theme/app_theme.dart';
import 'screens/home_page.dart';

void main() {
  runApp(const CampusEventosApp());
}

class CampusEventosApp extends StatelessWidget {
  const CampusEventosApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Campus Eventos',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme, // Aplicamos nuestro tema propio
      home: const HomePage(),
    );
  }
}
