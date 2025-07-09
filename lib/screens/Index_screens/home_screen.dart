import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Container(width: 200, color: Colors.white),
        appBar: AppBar(
          leading: Builder(
            builder: (context) => IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Image.asset('assets/menu_icon.png'),
            ),
          ),
          title: Text('Index'),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/profile_image.png'),
              ),
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text('01', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset('assets/index.png'),
              label: "Index",
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/calendar.png'),
              label: "Celender",
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/clock.png'),
              label: "Focuse",
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/profile_icon.png'),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
