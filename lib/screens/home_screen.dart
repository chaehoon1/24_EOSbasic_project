import 'package:eos_todolist/screens/setting_screen.dart';
import 'package:eos_todolist/widgets/add_button.dart';
import 'package:eos_todolist/widgets/todo_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List toDoLists = [];
  final TextEditingController _textEditingController = TextEditingController();

  @override
  void initState() {
    _textEditingController.clear();
    super.initState();
    toDoLists.add("1111111");
    toDoLists.add("2222222");
    toDoLists.add("3333333");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFA4C639).withOpacity(0.1),
        title: Text('EOS ToDoList'),
        leading: Image.asset('assets/images/eos_logo.png'),
        actions: [
          IconButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => SettingScreen()));
          },
              icon: Icon(Icons.settings_rounded)),
        ],
      ),
      body: Column(
        children: [
          Container(
              height: 200,
              padding: EdgeInsets.all(25),
              child: Row(
                  children: [
                    Container(
                        height: 140,
                        width: 140,
                        /*decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(width: 10, color: Colors.grey),
                            borderRadius: BorderRadius.circular(70)
                        ),*/
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(80),
                            child: Image.asset('assets/images/profile.png', fit: BoxFit.cover,),
                        ),
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
          Expanded(
            child: Stack(
              children: [
                Padding(padding:EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    width: MediaQuery.of(context).size.width + 100,
                    height: 430,
                    decoration: BoxDecoration(
                        color:  Color(0xFFA4C639).withOpacity(0.1),
                        borderRadius: BorderRadius.circular(20)
                    ),
                  )
                ),
                Positioned(
                  top: 20,
                  left: MediaQuery.of(context).size.width / 2 -75,
                  child: Container(
                    width: 150,
                    height: 38,
                    decoration: BoxDecoration(
                      color: Colors.lightGreen.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: Center(
                      child: Text(
                          "To do list",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 23,
                            fontWeight: FontWeight.w600
                          ),
                      ),
                    ),
                  ),
                ),
                Padding(
                      padding: EdgeInsets.only(top: 80, left: 40, right: 25),
                        child: Container(
                              child: ListView.builder(
                                  itemCount: toDoLists.length,
                                  itemBuilder: (BuildContext context, int index) {
                                    return ToDoItem(
                                      title: toDoLists[index],
                                      onDelete: () {
                                        setState(() {
                                          toDoLists.removeAt(index);
                                        });
                                      },
                                    );
                                  }
                                  ),
                            ),
                      ),
                Positioned(
                    bottom: 30,
                    right: 40,
                    child: AddButton(
                        onPressed: _showAddToDoDialog
                    )
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  void _showAddToDoDialog() {
    showDialog(context: context, builder: (BuildContext context) {
      return AlertDialog(
        title: Text("할 일 추가"),
        content: TextField(
          controller: _textEditingController,
          decoration: InputDecoration(
            hintText: "할 일을 입력하세요.",
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey)
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black)
            )
          ),
        ),
        actions: [
          TextButton(onPressed: () {
            _textEditingController.clear();
            Navigator.of(context).pop();
          }, child: Text(
            "취소",
            style: TextStyle(
              color: Colors.black
            ),
          ),
          ),
          TextButton(onPressed: () {
            if(_textEditingController.text.isNotEmpty) {
              setState(() {
                toDoLists.add(_textEditingController.text);
                _textEditingController.clear();
              });
              Navigator.of(context).pop();
            }
          }, child: Text(
              "추가",
            style: TextStyle(
              color: Colors.black
            ),
          )
          ),
        ],
      );
    }
    );
  }
}
