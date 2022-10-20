
import 'package:dars_10/sign_in_page.dart';
import 'package:dars_10/sign_up_page.dart';
import 'package:dars_10/spalash_page.dart';
import 'package:flutter/material.dart';

// import 'sign_up_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: SplashPage.splash,
      routes: {
        SplashPage.splash: (context) => const SplashPage(),
        SignInPage.signIn: (context) => const SignInPage(),
        SignUpPage.signUp: (context) => const SignUpPage(),
      },
      
    );
  }
}

