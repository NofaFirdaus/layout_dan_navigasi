import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Card Layout')),
        body: const ContentWidget(),
      ),
    );
  }
}

class ContentWidget extends StatelessWidget {
  const ContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final titleText = const Text(
      'Delicious Food',
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );

    final subTitle = const Text(
      'A delightful experience',
      style: TextStyle(
        fontSize: 16,
        color: Colors.grey,
      ),
    );

    final ratings = Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: const [
              Icon(Icons.star, color: Colors.green),
              Icon(Icons.star, color: Colors.green),
              Icon(Icons.star, color: Colors.green),
              Icon(Icons.star, color: Colors.black),
              Icon(Icons.star, color: Colors.black),
            ],
          ),
          const Text(
            '170 Reviews',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontFamily: 'Roboto',
              letterSpacing: 0.5,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );

    final iconList = DefaultTextStyle.merge(
      style: const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w800,
        fontFamily: 'Roboto',
        letterSpacing: 0.5,
        fontSize: 18,
        height: 2,
      ),
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: const [
                Icon(Icons.kitchen, color: Colors.green),
                Text('PREP:'),
                Text('25 min'),
              ],
            ),
            Column(
              children: const [
                Icon(Icons.timer, color: Colors.green),
                Text('COOK:'),
                Text('1 hr'),
              ],
            ),
            Column(
              children: const [
                Icon(Icons.restaurant, color: Colors.green),
                Text('FEEDS:'),
                Text('4-6'),
              ],
            ),
          ],
        ),
      ),
    );

    final mainImage = Image.asset(
      'assets/poliwangi.jpeg',
      fit: BoxFit.cover,
    );

    final leftColumn = Container(
      padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          titleText,
          const SizedBox(height: 10),
          subTitle,
          const SizedBox(height: 20),
          ratings,
          iconList,
        ],
      ),
    );

    return Center(
      child: Container(
        margin: const EdgeInsets.fromLTRB(0, 40, 0, 30),
        height: 600,
        child: Card(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 440,
                child: leftColumn,
              ),
              Expanded(child: mainImage), 
            ],
          ),
        ),
      ),
    );
  }
}
