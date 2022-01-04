import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Center(
            child: Text(
              'Hello, world!',
              style: TextStyle(
                fontSize: 50,
                // fontWeight: FontWeight.w900,
              ),
            ),
          ),
          Center(
            child: SizedBox(
              height: 40,
              width: 40,
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/avatar.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
