import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/dev_launcher.dart';
import 'screens/home_screen.dart';
import 'screens/on_boarding_screen.dart';
import 'screens/auth_screens/auth_login_screen.dart';
import 'screens/auth_screens/auth_register_screen.dart';
import 'screens/auth_screens/forgot_password_screen.dart';
import 'basic_widgets_and_layouts/align_widget.dart';
import 'basic_widgets_and_layouts/container_widget.dart';
import 'basic_widgets_and_layouts/icon_widget.dart';
import 'basic_widgets_and_layouts/image_widget.dart';
import 'basic_widgets_and_layouts/network_image_widget.dart';
import 'basic_widgets_and_layouts/text_widget.dart';
import 'basic_widgets_and_layouts/column_widget.dart';
import 'basic_widgets_and_layouts/padding.dart';
import 'basic_widgets_and_layouts/margin_widget.dart';
import 'basic_widgets_and_layouts/padding_widget_approach_2.dart';

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
      // Show the DevLauncher during debug so widget demos are easy to reach.
      home: kDebugMode ? const DevLauncher() : SplashScreen(),
      routes: {
        '/dev': (_) => const DevLauncher(),
        // Basic widgets routes
        '/basic/align': (_) => const AlignWidget(),
        '/basic/container': (_) => const ContainerWidget(),
        '/basic/icon': (_) => const IconWidget(),
        '/basic/image': (_) => const ImageWidget(),
        '/basic/network_image': (_) => const NetworkImageWidget(),
        '/basic/text': (_) => const TextWidget(),
        '/basic/column': (_) => const ColumnWidget(),
        '/basic/padding2': (_) => const PaddingApproach2Widget(),
        '/basic/padding': (_) => const PaddingWidget(),
        '/basic/margin': (_) => const MarginWidget(),
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
