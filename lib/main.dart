import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'eos todolist',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: MyHomePage()
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('EOS todolist'),
        leading: Icon(Icons.insert_emoticon_sharp),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        //crossAxisAlignment: CrossAxisAlignment.,
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(width: 5), color: Colors.black
            ),
            //color: Colors.red,
            width: 150,
            height: 150,
          ),
          Container(
            color: Colors.blue,
            width: 150,
            height: 150,
          ),
          Container(
            color: Colors.amber,
            width: 150,
            height: 150,
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Text('Hello World'),
      ),
    );
  }
}
