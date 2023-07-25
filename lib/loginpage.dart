// ignore_for_file: prefer_const_constructors, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController emailController = TextEditingController();
  TextEditingController senhaController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromRGBO(37, 36, 44, 1)
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: _page(),
      ),
    );
  }

  Widget _page(){
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              circle(),
              const SizedBox(height: 20),
              _nameBelow(),
              const SizedBox(height: 5),
              _nameBelow2(),
              const SizedBox(height: 20),
              _inputField("Email", emailController),
              const SizedBox(height: 5),
              _inputField("Senha", senhaController, isPassword: true),
              const SizedBox(height: 50),
              _loginButton(),
              const SizedBox(height: 50),
              _forgotPass(),
              const SizedBox(height: 50),
              _createAccount(),
            ],
            ),
          ),
          ),
    );
  }
  
  Widget circle(){
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          )
        ],
        image: DecorationImage(image: NetworkImage('https://th.bing.com/th/id/R.29826fff2850325f2f33c0a573ae3d17?rik=fV7BroNse136pw&riu=http%3a%2f%2ffc06.deviantart.net%2ffs46%2ff%2f2009%2f231%2f7%2f4%2fUchiha_Sasuke_Sharingan_by_ak_kurohitsugi.png&ehk=Nvl%2frZqcReeQQQdnqPBc7oheh0Xz%2f28hhXKfWxpGg54%3d&risl=&pid=ImgRaw&r=0.jpg'),
        fit: BoxFit.cover,
        ),
        shape: BoxShape.circle,
        //color: Color.fromRGBO(94, 200, 248, 1),
        ),
        );
  }

  Widget _nameBelow(){
    return RichText(text: TextSpan(
      style: const TextStyle(
        fontSize: 32.57,
        color: Colors.white,
        fontFamily: 'SF Pro Text Black'
      ),
      children: const <TextSpan>[
        TextSpan(text: "Welcome back,"),
      ]
    )
    );
  }

  Widget _nameBelow2(){
    return RichText(text: TextSpan(
      style: const TextStyle(
        fontSize: 32.57,
        fontFamily: 'SF Pro Text',
        color: Colors.white
      ),
      children: const <TextSpan>[
        TextSpan(text: "Walker."),
      ]
    )
    );
  }

  Widget _inputField(String hintText, TextEditingController controller, {isPassword = false}){

    var line = UnderlineInputBorder(borderSide: BorderSide(color: Colors.white));

    return TextField(
      style: const TextStyle(color: Colors.white, fontFamily: 'SF Pro Text'),
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.white),
        enabledBorder: line,
        focusedBorder: line,
      ),
      obscureText: isPassword,
    );
  }

  Widget _loginButton(){
    return SizedBox(
      width: 230,
      height: 52,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Color.fromRGBO(94, 200, 248, 1)),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30)
            ),
            )),
        onPressed: (){
          debugPrint("Email: ${emailController.text}");
          debugPrint("Senha: ${senhaController.text}");
        }, 
        child: const SizedBox(
          width: double.infinity,
          child: Text("Entrar", 
          textAlign: TextAlign.center,
          style:TextStyle(
            fontFamily: 'SF Pro Text',
            fontSize: 19.209,
            color: Color.fromRGBO(37, 36, 44, 1)
          ),
          ),
        )
      ),
    );
  }

  Widget _forgotPass() {
    return const Text("Esqueceu a senha?",
    textAlign: TextAlign.center,
    style: TextStyle(
      fontFamily: 'SF Pro Text',
      decoration: TextDecoration.underline,
      fontSize: 12.3,
      color: Color.fromRGBO(94, 200, 248, 1)
    ),
    );
  }

  Widget _createAccount() {
    return const Text("Crie sua conta",
    textAlign: TextAlign.end,
    style: TextStyle(
      fontFamily: 'SF Pro Text',
      decoration: TextDecoration.underline,
      fontSize: 17.22,
      color: Color.fromRGBO(94, 200, 248, 1),
    ),
    );
  }
}