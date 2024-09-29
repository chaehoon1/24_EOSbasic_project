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
        fontFamily: 'Prentendard',
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
        backgroundColor: Color(0xFFA4C639).withOpacity(0.13),
        title: Text('EOS ToDoList'),
        leading: Image.asset('assets/images/eos_logo.png'),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.lightGreen.withOpacity(0.07),
            height: 200,
            padding: EdgeInsets.all(25),
            child: Row(
              children: [
                Container(
                  height: 140,
                  width: 140,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 10, color: Colors.grey),
                    borderRadius: BorderRadius.circular(70)
                  ),
                  child: Center(
                    child: Image.asset('assets/images/eos_logo.png')
                  )
                ),
                SizedBox(
                  width: 35,
                ),
                Expanded(
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Shin Chae Hoon',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                    ),
                    ),
                    SizedBox(height: 15),
                    Text('Hello Flutter!'),
                  ],
                ),
                ),
              ]
            )
          ),
          Container(
            height: 400,
            color: Color(0xFFA4C639).withOpacity(0.13)
          ),
        ],
      ),
    );
  }
}
