import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:to_do_list_provider/common_widgets/Custom_button.dart';
import 'package:to_do_list_provider/screens/Intro_screens/start_screen.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _RendomScreenState();
}

class _RendomScreenState extends State<OnboardScreen> {
  PageController _controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            // page view
            PageView(
              controller: _controller,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 0,
                        child: CustomTextButton(
                          text: 'Skip',
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => StartScreen(),
                              ),
                            );
                          },
                        ),
                      ),
                      Positioned(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/onboard1.png'),

                            SizedBox(height: 70),
                            Center(
                              child: Text(
                                'Manage your tasks',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(height: 70),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 40,
                                  right: 40,
                                ),
                                child: Text(
                                  textAlign: TextAlign.center,
                                  'you can easily manage all of your daily tasks in DoMe for free',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 40,
                        right: 0,
                        child: CustomelevatedButton(
                          text: 'Next',
                          onPressed: () {
                            _controller.jumpToPage(1);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 0,
                        child: CustomTextButton(
                          text: 'Skip',
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => StartScreen(),
                              ),
                            );
                          },
                        ),
                      ),
                      Positioned(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/onboard2.png'),

                            SizedBox(height: 70),
                            Center(
                              child: Text(
                                'Create daily routing',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(height: 70),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 40,
                                  right: 40,
                                ),
                                child: Text(
                                  textAlign: TextAlign.center,
                                  'In Uptodo you can create your personalized routine to stay productive',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 40,
                        left: 0,
                        right: 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomTextButton(
                              text: 'Back',
                              onPressed: () {
                                _controller.jumpToPage(0);
                              },
                            ),
                            CustomelevatedButton(
                              text: 'Next',
                              onPressed: () {
                                _controller.jumpToPage(2);
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Stack(
                    children: [
                      Positioned(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/onboard3.png'),

                            SizedBox(height: 70),
                            Center(
                              child: Text(
                                'Orgonaize your tasks',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(height: 70),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 40,
                                  right: 40,
                                ),
                                child: Text(
                                  textAlign: TextAlign.center,
                                  'you can organize your daily tasks by adding your tasks into separate categories',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 40,
                        left: 0,
                        right: 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomTextButton(
                              text: 'Back',
                              onPressed: () {
                                _controller.jumpToPage(1);
                              },
                            ),
                            CustomelevatedButton(
                              text: 'Get Started',
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => StartScreen(),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // indicator
            Positioned(
              bottom: 20,
              left: 0,
              right: 0,
              child: Center(
                child: SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: ExpandingDotsEffect(
                    activeDotColor: Colors.white,
                    dotColor: Colors.white38,
                    dotHeight: 8,
                    dotWidth: 16,
                    expansionFactor: 3,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
