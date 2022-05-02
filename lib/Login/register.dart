import 'package:denme/widget/email_textfield.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          shadowColor: Colors.white,
          title: Text(
            "  Kayıt Ol",
            style:
                TextStyle(color: Color.fromRGBO(35, 35, 35, 1), fontSize: 30),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 50),
              TextFieldContainer(hintText: "Email",),
              SizedBox(height: 20),
              PasswordOne(),
              SizedBox(height: 20),
              PasswordTwo(),
              SizedBox(height: 40),
              RegisterButton(),
              SizedBox(height: 50),
              LoginButton(),
            ],
          ),
        ),
      ),
    );
  }
}


class PasswordOne extends StatelessWidget {
  const PasswordOne({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool _isObscure = true;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.7,
      height: size.height * 0.06,
      decoration: BoxDecoration(
        color: Color.fromRGBO(229, 235, 240, 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        obscureText: _isObscure,
        decoration: InputDecoration(
          icon: Icon(
            Icons.lock,
            color: Color.fromRGBO(89, 60, 161, 1),
          ),
          hintText: "Şifre",
        ),
      ),
    );
  }
}

class PasswordTwo extends StatelessWidget {
  const PasswordTwo({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool _isObscure = true;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.7,
      height: size.height * 0.06,
      decoration: BoxDecoration(
        color: Color.fromRGBO(229, 235, 240, 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        obscureText: _isObscure,
        decoration: InputDecoration(
          icon: Icon(
            Icons.lock,
            color: Color.fromRGBO(89, 60, 161, 1),
          ),
          hintText: "Şifre Tekrar",
        ),
      ),
    );
  }
}

class RegisterButton extends StatelessWidget {
  const RegisterButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        width: size.width * 0.7,
        height: size.height * 0.06,
        decoration: BoxDecoration(
          color: Color.fromRGBO(89, 60, 161, 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            "Kayıt Ol",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
      onTap: () {},
    );
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        "Giriş Yap",
        style: TextStyle(
            color: Color.fromRGBO(89, 60, 161, 1),
            fontSize: 18,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
