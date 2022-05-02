import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
            "  Hoş Geldiniz",
            style:
                TextStyle(color: Color.fromRGBO(35, 35, 35, 1), fontSize: 30),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              TextFieldContainer(),
              SizedBox(height: 10),
              TextFieldContainer2(),
              SizedBox(height: 0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "                                                                Şifrenizi mi unuttunuz?",
                      style: TextStyle(
                          fontSize: 13, color: Color.fromRGBO(47, 47, 47, 1)),
                    ),
                  )
                ],
              ),
              SizedBox(height: 20),
              LoginButton(),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Sosyal medya hesaplarınız ile giriş yapabilirsiniz:",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
                        child:
                            IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                        width: 50,
                        height: 75,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 207, 204),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Google",
                        style: TextStyle(color: Color.fromRGBO(242, 78, 30, 1)),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.add_circle_outlined)),
                        width: 75,
                        height: 75,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 216, 237, 250),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Twitter",
                        style:
                            TextStyle(color: Color.fromRGBO(133, 182, 255, 1)),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.facebook,
                            color: Color.fromRGBO(100, 153, 250, 1),
                            size: 50,
                          ),
                        ),
                        width: 75,
                        height: 75,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 186, 208, 224),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Facebook",
                        style: TextStyle(
                          color: Color.fromARGB(255, 93, 147, 248),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Kayıt Ol",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TextFieldContainer extends StatelessWidget {
  const TextFieldContainer({
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
            hintText: "Email"),
      ),
    );
  }
}

class TextFieldContainer2 extends StatelessWidget {
  const TextFieldContainer2({
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

  void setState(Null Function() param0) {}
}

class LoginButton extends StatelessWidget {
  const LoginButton({
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
        color: Color.fromRGBO(89, 60, 161, 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          "Giriş Yap",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
