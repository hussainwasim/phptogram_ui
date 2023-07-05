import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:ui/screens/second.dart';
//import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // List<String> images = [
  //   'assets/images/img1.jpeg',
  //   'assets/images/mount.jpeg',
  //   'assets/images/sky.jpg',
  // ];
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
                Navigator.pop(context);
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Expanded(
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFF005aa5),
                ),
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(60)),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0XFF8591ac),
                          Color(0xFFc49e9f),
                          Color(0XFFe5a79d)
                        ]),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'News',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 180,
                            child: ListView.separated(
                                itemCount: 10,
                                separatorBuilder: (context, index) => SizedBox(
                                      width: 20,
                                    ),
                                scrollDirection: Axis.horizontal,
                                itemBuilder: ((context, index) {
                                  return Container(
                                    height: 350,
                                    width: 110,
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
                                  );
                                })),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Saved Items',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 180,
                            child: ListView.separated(
                                itemCount: 10,
                                separatorBuilder: (context, index) => SizedBox(
                                      width: 20,
                                    ),
                                scrollDirection: Axis.horizontal,
                                itemBuilder: ((context, index) {
                                  return Container(
                                    width: 110,
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
                                  );
                                })),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Saved Items',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 180,
                            child: ListView.separated(
                                itemCount: 10,
                                separatorBuilder: (context, index) => SizedBox(
                                      width: 20,
                                    ),
                                scrollDirection: Axis.horizontal,
                                itemBuilder: ((context, index) {
                                  return Stack(
                                    children: [
                                      Container(
                                        width: 110,
                                        height: 200,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFE3E9F0),
                                          borderRadius:
                                              BorderRadius.circular(11),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(11),
                                            child: Image.asset(
                                              'assets/images/mo2.jpeg',
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 70,
                                        left: 30,
                                        child: Container(
                                          height: 40,
                                          decoration: BoxDecoration(
                                              color: Colors.white54,
                                              shape: BoxShape.circle),
                                          child: IconButton(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.play_arrow,
                                                color: Color(0xFF005aa5),
                                              )),
                                        ),
                                      )
                                    ],
                                  );
                                })),
                          ),
                        ),
                      ]),
                ),
              ),
            ],
          ),
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
