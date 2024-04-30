import 'dart:async';
import 'package:cofood/Views/login_page.dart';
import 'package:cofood/core/components/Logo.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/Pattern.png",
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  tileMode: TileMode.repeated,
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.white.withOpacity(0),
                    Colors.white.withOpacity(0.5),
                    Colors.white.withOpacity(0.8),
                    Colors.white.withOpacity(0.9),
                    Colors.white.withOpacity(1),
                    Colors.white,
                  ]),
            ),
            child: Column(
              children: [
                Expanded(child: Container()),
                const Logo(),
                Expanded(child: Container())
              ],
            ),
          ),
        ],
      ),
    );
  }

  startTime() async {
    var duration = const Duration(seconds: 2);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) {
      return LoginPage();
    }), (route) => true);
  }
}
