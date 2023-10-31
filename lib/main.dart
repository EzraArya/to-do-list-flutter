import 'package:flutter/material.dart';
import 'package:to_do_list/screen/home_page.dart';
import 'package:to_do_list/screen/login_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'To-Do List', home: LoginPage());
  }
}

