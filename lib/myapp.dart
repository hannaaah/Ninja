import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int level = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "NINJA LEVEL",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 17,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.5,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.grey[850],
        ),
        backgroundColor: Colors.grey[900],
        body: Padding(
          padding: const EdgeInsets.fromLTRB(10, 20, 10, 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundColor: Colors.grey[900],
                  backgroundImage: NetworkImage(
                      "https://wallpapercave.com/wp/wp1938438.jpg"),
                  radius: 37,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  "Agnes",
                  style: TextStyle(
                      color: Colors.white60,
                      letterSpacing: 0.6,
                      fontWeight: FontWeight.w500,
                      fontSize: 25,
                      fontFamily: 'Redressed-Regular'),
                ),
              ),
              SizedBox(
                height: 55,
              ),
              Text(
                "CURRENT NINJA LEVEL",
                style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 1.2,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                level.toString(),
                style: TextStyle(
                  color: Colors.amber[200],
                  letterSpacing: 1.2,
                  fontWeight: FontWeight.w600,
                  fontSize: 19,
                ),
              ),
              SizedBox(
                height: 17,
              ),
              Text(
                "EMAIL ID",
                style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 1.2,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 7,
              ),
              Row(
                children: [
                  Icon(
                    Icons.email,
                    color: Colors.amber[200],
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "agness@hotmail.com",
                    style: TextStyle(
                      color: Colors.amber[200],
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              level += 1;
            });
          },
          backgroundColor: Colors.grey[850],
          child: Icon(
            Icons.add,
            color: Colors.amber[200],
          ),
        ),
      ),
    );
  }
}
