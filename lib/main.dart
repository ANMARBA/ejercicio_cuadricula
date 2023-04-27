import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(child: grid()),
      ),
    );
  }

  Widget grid() {
    final List<MyItem> items = [
      MyItem(numbers: [1, 2, 3]),
      MyItem(numbers: [4, 5, 6]),
      MyItem(numbers: [7, 8, 9]),
    ];

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: items.map((item) {
        return Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: item.numbers.map((count) {
              return Expanded(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(border: Border.all()),
                  child: Center(
                    child: Text('$count'),
                  ),
                ),
              );
            }).toList(),
          ),
        );
      }).toList(),
    );
  }
}

class MyItem {
  List<int> numbers;

  MyItem({required this.numbers});
}
