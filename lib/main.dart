import 'package:example_extension/my_extension.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HELLO'.tr),
      ),
      body: Column(
        children: [
          Text('Esta tradução nao existe'.tr),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => context.showMySnackBarError(),
            child: Text('CLICK_HERE'.tr),
          ),
          const SizedBox(height: 20),
          Text('width: ${context.width}'),
          Text('height: ${context.height}'),
          Text('aspectRatio: ${context.aspectRatio}'),
          Text('longestSide: ${context.longestSide}'),
          Text('shortestSide: ${context.shortestSide}'),
        ],
      ),
    );
  }
}
