import 'package:flutter/material.dart';

class BulusmaEkrani extends StatelessWidget {
  const BulusmaEkrani({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: Image.asset('assets/images/logoSeffaf.png',width: 200,),
        toolbarTextStyle: TextStyle(color: Colors.amber),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 75),
          Center(),
          Container(
            height: 365,
            width: 400,
            child: ClipRRect(
              borderRadius:BorderRadius.circular(36),
              child: Image.network(
                'https://images.unsplash.com/photo-1620274549078-11bf5291cb9a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80',
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            alignment: Alignment(-1, 0),
            child: Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 10)),
                Text("Salih Gültekin",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Color.fromARGB(255, 35, 35, 35))),
                Padding(padding: EdgeInsets.only(top: 10)),
                Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Blandit ultrices et imperdiet venenatis. Eu, accumsan libero mattis nunc rhoncus.",
                    style: TextStyle(fontSize: 13.5, fontWeight: FontWeight.w100, color: Color.fromARGB(255, 90, 90, 90))),
              ],
            ),
            height: 100,
            width: 365,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(10), top: Radius.circular(0)),
              color: Color.fromARGB(255, 223, 226, 231),
            ),
          ),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                child: Text("X", style: TextStyle(fontSize: 24)),
              ),
              FloatingActionButton(
                onPressed: () {},
                child: Text("X", style: TextStyle(fontSize: 24)),
              ),
              FloatingActionButton(
                onPressed: () {},
                child: Icon(Icons.chat),
              ),
              FloatingActionButton(
                onPressed: () {},
                child: Icon(Icons.save),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home, color: Color.fromARGB(255, 186, 199, 204)), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.search, color: Color.fromARGB(255, 186, 199, 204)), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.add, color: Color.fromARGB(255, 186, 199, 204)), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.send, color: Color.fromARGB(255, 186, 199, 204)), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.circle, color: Color.fromARGB(255, 186, 199, 204)), label: ""),
        ],
      ),
    );
  }
}
