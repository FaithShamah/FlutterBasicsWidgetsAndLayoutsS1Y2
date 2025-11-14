import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DevLauncher extends StatelessWidget {
  const DevLauncher({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dev Launcher')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Quick links to screens for development',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/splash'),
              child: const Text('Splash Screen'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/onboarding'),
              child: const Text('Onboarding'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/home'),
              child: const Text('Home'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/login'),
              child: const Text('Login'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/register'),
              child: const Text('Register'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/forgot'),
              child: const Text('Forgot Password'),
            ),
            const Spacer(),
            if (kDebugMode)
              const Text('Running in debug mode', textAlign: TextAlign.center)
            else
              const Text(
                'Dev launcher hidden in release builds',
                textAlign: TextAlign.center,
              ),
          ],
        ),
      ),
    );
  }
}
