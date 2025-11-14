import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: PageView(
          controller: _controller,
          onPageChanged: (index) {
            setState(() => isLastPage = index == 2);
          },
          children: [
            buildPage(
              image: 'images/Logo2.png',
              title: 'Welcome to the Drop Safe App',
              description: 'Be encouraged not to Drop out of School.',
            ),
            buildPage(
              image: 'images/woman.png',
              title: 'Stay Motivated',
              description:
                  'Continue pushing forward and never give up on your dreams.',
            ),
            buildPage(
              image: 'images/girls.png',
              title: 'Achieve Your Goals',
              description: 'Turn your plans into action effortlessly.',
            ),
          ],
        ),
      ),
      bottomSheet: isLastPage
          ? TextButton(
              onPressed: () {
                // When onboarding completes, send user to the login flow so
                // they can sign in or register.
                Navigator.pushReplacementNamed(context, '/login');
              },
              child: Container(
                width: double.infinity,
                height: 60,
                color: Colors.deepPurple,
                alignment: Alignment.center,
                child: Text(
                  'Get Started',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            )
          : Container(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    child: Text('Skip'),
                    onPressed: () {
                      // Skip onboarding and go directly to login.
                      Navigator.pushReplacementNamed(context, '/login');
                    },
                  ),
                  Row(
                    children: [
                      TextButton(
                        child: Text('Next'),
                        onPressed: () => _controller.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
    );
  }

  Widget buildPage({
    required String image,
    required String title,
    required String description,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(image, height: 300),
        SizedBox(height: 30),

        Text(
          title,
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 15),
        Text(
          description,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18, color: Colors.grey[700]),
        ),
      ],
    );
  }
}
