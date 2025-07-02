import 'package:flutter/material.dart';

class RendomScreen extends StatefulWidget {
  const RendomScreen({super.key});

  @override
  State<RendomScreen> createState() => _RendomScreenState();
}

class _RendomScreenState extends State<RendomScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Skip',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/onboard1.png'),
                        SizedBox(height: 50),
                        Container(height: 20, color: Colors.red),
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
                            padding: const EdgeInsets.only(left: 40, right: 40),
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
                    bottom: 20,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Back',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff8875FF),
                            foregroundColor: Color(0xFFFFFFFF),
                          ),
                          child: Text('Next'),
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
                    top: 0,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Skip',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/onboard2.png'),
                        SizedBox(height: 50),
                        Container(height: 20, color: Colors.red),
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
                            padding: const EdgeInsets.only(left: 40, right: 40),
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
                    bottom: 20,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Back',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff8875FF),
                            foregroundColor: Color(0xFFFFFFFF),
                          ),
                          child: Text('Next'),
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
                    top: 0,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Skip',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/onboard3.png'),
                        SizedBox(height: 50),
                        Container(height: 20, color: Colors.red),
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
                            padding: const EdgeInsets.only(left: 40, right: 40),
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
                    bottom: 20,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Back',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff8875FF),
                            foregroundColor: Color(0xFFFFFFFF),
                          ),
                          child: Text('Next'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
