import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DevLauncher extends StatelessWidget {
  const DevLauncher({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dev Launcher')),
      body: SafeArea(
        child: SingleChildScrollView(
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
              const SizedBox(height: 8),
              const Divider(),
              const SizedBox(height: 8),
              const Text(
                'Basic widgets',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/basic/align'),
                child: const Text('Align Widget'),
              ),
              ElevatedButton(
                onPressed: () =>
                    Navigator.pushNamed(context, '/basic/container'),
                child: const Text('Container Widget'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/basic/icon'),
                child: const Text('Icon Widget'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/basic/image'),
                child: const Text('Local Image Grid'),
              ),
              ElevatedButton(
                onPressed: () =>
                    Navigator.pushNamed(context, '/basic/network_image'),
                child: const Text('Network Image'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/basic/text'),
                child: const Text('Text Widget'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/basic/column'),
                child: const Text('Column Widget'),
              ),
              ElevatedButton(
                onPressed: () =>
                    Navigator.pushNamed(context, '/basic/padding2'),
                child: const Text('Padding Widget'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/basic/padding'),
                child: const Text('Padding Widget'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/basic/margin'),
                child: const Text('Margin Widget'),
              ),
              const SizedBox(height: 12),
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
      ),
    );
  }
}
