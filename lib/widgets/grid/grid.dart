  import 'package:flutter/material.dart';

  class MyApp extends StatelessWidget {
    const MyApp({super.key});

    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: const Text('Image Grid Example')),
          body: _buildGrid(),
        ),
      );
    }

    Widget _buildGrid() => GridView.extent(
          maxCrossAxisExtent: 150,
          padding: const EdgeInsets.all(4),
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          children: _buildGridTileList(30),
        );

    List<Container> _buildGridTileList(int count) => List.generate(
    count, (i) => Container(child: Image.asset('assets/poliwangi.jpeg')));
  }