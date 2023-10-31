import 'package:flutter/material.dart';
import 'package:to_do_list/constants/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: tdWhite,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              //Login Text
              Text(
                'Login',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                ),
              ),
              //Horizontal Line

              //Username TextField

              //Password TextField

              //Forgot Password

              //Login Button

              //Dont have an account text

              //sign up button
            ],
          ),
        ),
      ),
    );
  }
}