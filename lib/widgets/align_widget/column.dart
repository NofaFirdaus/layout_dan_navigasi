import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Image Column Example')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/poliwangi.jpeg',width: 100,),
              Image.asset('assets/poliwangi.jpeg',width: 100),
              Image.asset('assets/poliwangi.jpeg',width: 100),
            ],
          ),
        ),
      ),
    );
  }
}