import 'package:denme/widget/email_textfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 50),
              const TextFieldContainer(hintText: "Email",),
              const SizedBox(height: 10),
              buildPassword(size),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.zero),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Şifrenizi mi unuttunuz?",
                    style: TextStyle(fontSize: 13, color: Color.fromRGBO(47, 47, 47, 1)),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const LoginButton(),
              const SizedBox(height: 20),
              Text(
                "Sosyal medya hesaplarınız ile giriş yapabilirsiniz",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12
                ),
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
                        child: IconButton(onPressed: () {}, icon: Icon(Icons.add)),
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
                        child: IconButton(onPressed: () {}, icon: Icon(Icons.add_circle_outlined)),
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
                        style: TextStyle(color: Color.fromRGBO(133, 182, 255, 1)),
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
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black54),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container buildPassword(Size size) {
    return Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            height: size.height * 0.06,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(229, 235, 240, 1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              obscureText: _isObscure,
              decoration: InputDecoration(
                icon: const Icon(
                  Icons.lock,
                  color: Color.fromRGBO(89, 60, 161, 1),
                ),
                hintText: "Şifre",
                suffixIcon: InkWell(
                  onTap: (){
                    _isObscure = !_isObscure;
                    setState(() {});
                  },
                  child: Icon(
                    _isObscure ? Icons.remove_red_eye : Icons.close,
                  ),
                ),
              ),
            ),
          );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      centerTitle: true,
      title: const Text(
        "Hoş Geldiniz",
        style: TextStyle(color: Color.fromRGBO(35, 35, 35, 1), fontSize: 30),
      ),
    );
  }
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
