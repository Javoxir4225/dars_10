import 'dart:async';

import 'package:dars_10/sign_in_page.dart';
import 'package:dars_10/sign_up_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);
  
  static const String splash = "/";

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 2000),
    );
    _animation = CurvedAnimation(
        parent: _animationController, curve: Curves.fastOutSlowIn);

    _animationController.forward();
    Timer(Duration(milliseconds: 2000), () {
      Navigator.of(context).pushReplacementNamed(SignInPage.signIn);
    });
    super.initState();
  }

  // @override
  // void dispose() {
  //   _animationController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FadeTransition(
          opacity: _animation,
          child: Image.asset(
            "assets/images/amazon.png",
            height: 150,
            width: 150,
          ),
        ),
      ),
    );
  }
}
