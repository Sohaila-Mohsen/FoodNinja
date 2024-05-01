import 'package:cofood/Views/splash_screen.dart';
import 'package:cofood/bloc/cubit/nav_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => NavCubit()),
        ],
        child: const MaterialApp(
          home: SplashScreen(),
        ));
  }
}
