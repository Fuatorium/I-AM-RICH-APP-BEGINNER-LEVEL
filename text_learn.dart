import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double price = 999.99;

  void increasePrice() {
    setState(() {
      price += 1.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueGrey[900],
        title: Text("I Am Rich"),
      ),
      body: Stack(
        children: [
          Center(
            child: Image(
              image: NetworkImage(
                'https://www.almanac.com/sites/default/files/styles/or/public/ruby-honored_member-shutterstock4c.jpg?itok=lbktb7a4',
              ),
            ),
          ),
          Positioned(
            top: 20,
            left: 20,
            child: Container(
              color: Colors.red,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '$price \$',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: increasePrice,
        backgroundColor: Colors.red,
        child: Icon(Icons.add),
      ),
    );
  }
}





