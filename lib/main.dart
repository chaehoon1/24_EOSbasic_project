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
        backgroundColor: Colors.lightGreen,
        title: Text('EOS ToDoList'),
        leading: Icon(Icons.check_box_outlined),
      ),
      body: Container(
        color: Colors.lightGreen.withOpacity(0.3),
        height: 200,
        padding: EdgeInsets.all(25),
        child: Row(
          children: [
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 10, color: Colors.grey)
              ),
              child: Center(
                child: Icon(Icons.person, size: 100, color: Colors.grey)
              )
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('EOS'),
                Text(
                  'Shin Chae Hoon',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                ),
                ),
                Text('Hello Flutter!'),
              ],

            ),
          ]
        )
      ),
    );
  }
}
