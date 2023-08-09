import 'package:flutter/material.dart';
import 'package:taskapp_m11/ui/screen/taskscreen/cancel_task_screen.dart';
import 'package:taskapp_m11/ui/screen/taskscreen/complited_task_screen.dart';
import 'package:taskapp_m11/ui/screen/taskscreen/in_Progress_task_screen.dart';
import 'package:taskapp_m11/ui/screen/taskscreen/new_task_screen.dart';

class BottomNavBaseScreen extends StatefulWidget {
  const BottomNavBaseScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavBaseScreen> createState() => _BottomNavBaseScreenState();
}

class _BottomNavBaseScreenState extends State<BottomNavBaseScreen> {
  int _selectedscreenindex = 0;
  final List<Widget> _screen = const[
    NewTaskScreen(),
    InProgressTaskScreen(),
    CancelTaskScreen(),
    ComplitedtaskScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screen[_selectedscreenindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedscreenindex,
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle: TextStyle(
          color: Colors.grey,
        ),
        selectedItemColor: Colors.green,
        showUnselectedLabels: true,
        onTap: (int indext){
          _selectedscreenindex = indext;
          if(mounted){
            setState(() {
            });
          };
        },
        items: const[
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_outlined),
            label: "New",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_tree_outlined),
            label: "In Progress",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cancel),
            label: "Cancel",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.done_all),
            label: "Complited",
          ),
        ],
      ),
    );
  }
}
