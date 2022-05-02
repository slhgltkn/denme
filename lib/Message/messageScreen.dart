import 'package:flutter/material.dart';

String UserName = "Salih";

class CenterBox extends StatelessWidget {
  const CenterBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: 400,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.amber),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.black),
          ),
          SizedBox(height: 50, width: 75),
          Column(
            children: [Text(UserName), Text("Text")],
          ),
          SizedBox(
            width: 200,
          ),
          Icon(Icons.square),
        ],
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back),
          title: Text("duo finder"),
          toolbarTextStyle: TextStyle(color: Colors.amber),
          centerTitle: true,

          //backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 0, vertical: 30),
            ),
            Center(
              child: Container(
                alignment: Alignment.topCenter,
                width: 300,
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  autocorrect: true,
                  decoration: InputDecoration(
                    hintText: '  Ara',
                    prefixIcon: Icon(Icons.search),
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 186, 199, 204)),
                    filled: true,
                    fillColor: Color.fromARGB(255, 229, 235, 240),
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 35),
                ),
                CenterBox(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                ),
                CenterBox(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                ),
                CenterBox(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                ),
                CenterBox(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                ),
                CenterBox(),
              ],
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                backgroundColor: Color.fromARGB(255, 182, 182, 182),
                label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.send), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.circle), label: ""),
          ],
        ),
      ),
    );
  }
}
