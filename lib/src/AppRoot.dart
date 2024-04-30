import 'package:cofood/Views/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
    
class AppRoot extends StatelessWidget {

  const AppRoot({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SplashScreen(),
      );
  }
}