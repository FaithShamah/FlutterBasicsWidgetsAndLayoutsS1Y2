import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/home_screen.dart';
import 'screens/on_boarding_screen.dart';
import 'screens/auth_screens/auth_login_screen.dart';
import 'screens/auth_screens/auth_register_screen.dart';
import 'screens/auth_screens/forgot_password_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Splash Demo',
      // In debug runs show the dev launcher so auth/other screens are easy to
      // Show the splash screen as the app entry by default.
      home: SplashScreen(),
      routes: {
        '/splash': (_) => SplashScreen(),
        '/home': (_) => const HomeScreen(),
        '/onboarding': (_) => const OnboardingScreen(),
        '/login': (_) => const AuthLoginScreen(),
        '/register': (_) => const AuthRegisterScreen(),
        '/forgot': (_) => const ForgotPasswordScreen(),
      },
    );
  }
}
