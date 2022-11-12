import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:hamro_taxi/screens/login.dart';
import 'package:hamro_taxi/screens/registration.dart';
import 'firebase_options.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hamro Taxi',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: AnimatedSplashScreen(
          duration: 3000,
          splash: 'images/splash.png',
          nextScreen: MyLogin(),
          splashTransition: SplashTransition.scaleTransition,
          backgroundColor: Colors.black),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
        drawer: Drawer(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  UserAccountsDrawerHeader(
                    accountName: Text("Kobid"),
                    accountEmail: Text("kobid.simkhada@deerwalk.edu.np"),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: AssetImage("images/user.jpg"),
                    ),
                  ),
                  ListTile(
                    trailing: Icon(Icons.history),
                    title: Text("History"),
                  ),
                  ListTile(
                    trailing: Icon(Icons.settings),
                    title: Text("Settings"),
                  ),
                  ListTile(
                    trailing: Icon(Icons.question_mark),
                    title: Text("FAQ"),
                  ),
                  ListTile(
                    trailing: Icon(Icons.support_agent),
                    title: Text("Support"),
                  ),
                ],
              ),
            ),
          ),
        ),
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(),
      ),
    );
  }
}

enum PageTransitionType {
  fade,
  rightToLeft,
  leftToRight,
  upToDown,
  downToUp,
  scale,
  rotate,
  size,
  rightToLeftWithFade,
  leftToRightWithFade,
}

// enum SplashTransition {
//   slideTransition,
//   scaleTransition,
//   rotationTransition,
//   sizeTransition,
//   fadeTransition,
//   decoratedBoxTransition
// }
