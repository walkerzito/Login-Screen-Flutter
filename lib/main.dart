// ignore_for_file: use_key_in_widget_constructors, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/loginpage.dart';

main(){
  runApp(const TelaDeLogin());
}

class TelaDeLogin extends StatelessWidget {
  const TelaDeLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
    );
  }
}