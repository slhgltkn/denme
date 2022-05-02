import 'package:flutter/material.dart';

class RegisterPageContinue extends StatelessWidget {
  const RegisterPageContinue({Key? key}) : super(key: key);

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
            "Devam Edelim",
            style:
                TextStyle(color: Color.fromRGBO(35, 35, 35, 1), fontSize: 30),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Name(),
              Surname(),
            ],
          ),
        ),
      ),
    );
  }
}

class Name extends StatelessWidget {
  const Name({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
        decoration: InputDecoration(
            icon: Icon(
              Icons.person,
              color: Color.fromRGBO(89, 60, 161, 1),
            ),
            hintText: "Ad"),
      ),
    );
  }
}

class Surname extends StatelessWidget {
  const Surname({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
        decoration: InputDecoration(
            icon: Icon(
              Icons.person,
              color: Color.fromRGBO(89, 60, 161, 1),
            ),
            hintText: "Soyad"),
      ),
    );
  }
}
