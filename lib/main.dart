import 'package:bookly_with_clean_architecture/constants.dart';
import 'package:bookly_with_clean_architecture/features/splash/presentation/view/splash_view.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SplashView(),
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}