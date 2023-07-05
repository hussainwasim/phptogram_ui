import 'package:flutter/material.dart';
import 'package:flutter_swipable/flutter_swipable.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:ui/screens/home.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: Color(0xFF005aa5),
        leading: Column(
          children: [
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyHomePage()));
              },
              icon: Icon(Icons.menu),
              color: Colors.white,
              iconSize: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                'Welcome!',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 10),
              ),
            ),
          ],
        ),
        title: SizedBox(
          child: Image.asset(
            'assets/images/logo.png',
            height: 100,
            width: 100,
          ),
        ),
        centerTitle: true,
        actions: [
          Column(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://cdn-icons-png.flaticon.com/512/3135/3135715.png',
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
      body: Container(
        color: Color(0xFF005aa5),
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(60)),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0XFF3579b2),
                      Color(0XFF005aa5),
                      Color(0xFF2a6eaf),
                      Color(0XFF697da3)
                    ]),
              ),
              child: Center(
                child: Stack(
                  children: [
                    Swipable(
                      child: Transform.rotate(
                        angle: -25,
                        child: Container(
                          height: 320,
                          width: 250,
                          decoration: BoxDecoration(
                            color: Color(0xFFE3E9F0),
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(11),
                              child: Image.asset(
                                'assets/images/moun.jpeg',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Swipable(
                      child: Transform.rotate(
                        angle: 515,
                        child: Container(
                          height: 320,
                          width: 250,
                          decoration: BoxDecoration(
                            color: Color(0xFFE3E9F0),
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(11),
                              child: Image.asset(
                                'assets/images/sky.jpg',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Swipable(
                      child: Transform.rotate(
                        angle: -50,
                        child: Container(
                          height: 320,
                          width: 250,
                          decoration: BoxDecoration(
                            color: Color(0xFFE3E9F0),
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(11),
                              child: Image.asset(
                                'assets/images/mo2.jpeg',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Swipable(
                      child: Transform.rotate(
                        angle: 0,
                        child: Container(
                          height: 320,
                          width: 250,
                          decoration: BoxDecoration(
                            color: Color(0xFFE3E9F0),
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(11),
                              child: Image.asset(
                                'assets/images/sky.jpg',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 100,
        decoration: BoxDecoration(
          color: Color(0xFF005aa5),
          //borderRadius: BorderRadius.only(topLeft: Radius.circular(-10))
        ),
        child: GNav(
          color: Colors.white,
          activeColor: Colors.white,
          tabs: [
            GButton(icon: Icons.home_filled),
            GButton(icon: Icons.image),
            GButton(icon: Icons.text_snippet),
            GButton(icon: Icons.calendar_month),
            GButton(icon: Icons.topic),
          ],
        ),
      ),
    );
  }
}
