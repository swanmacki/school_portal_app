import 'package:flutter/material.dart';
import 'theme/app_theme.dart';
import 'screens/login_screen.dart';
import 'screens/dashboard_screen.dart';

void main() {
  runApp(const SchoolPortalApp());
}

class SchoolPortalApp extends StatelessWidget {
  const SchoolPortalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'School Portal',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,

      // -----------------------------------------------------------------
      // PREVIEW SWITCH (No navigation logic required):
      // Set initialRoute to '/login' to capture Screen_1.png
      // Set initialRoute to '/dashboard' to capture Screen_2.png
      // -----------------------------------------------------------------
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginScreen(),
        '/dashboard': (context) => const DashboardScreen(),
      },
    );
  }
}
