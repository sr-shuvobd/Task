import 'package:flutter/material.dart';
import 'package:taskapp_m11/ui/screen/add_new_task_screen.dart';
import 'package:taskapp_m11/ui/widgets/summery_card.dart';
import 'package:taskapp_m11/ui/widgets/task_list_tile.dart';
import 'package:taskapp_m11/ui/widgets/user_profile_banner.dart';

class NewTaskScreen extends StatefulWidget {
  const NewTaskScreen({Key? key}) : super(key: key);

  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          UserProfileBanner(),
          const Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Row(
              children: [
                const Expanded(
                  child: SummeryCard(
                    title: "New",
                    number: 125,
                  ),
                ),
                const Expanded(
                  child: SummeryCard(
                    title: "Progress",
                    number: 128,
                  ),
                ),
                const Expanded(
                  child: SummeryCard(
                    title: "Cancel",
                    number: 136,
                  ),
                ),
                const Expanded(
                  child: SummeryCard(
                    title: "Complite",
                    number: 125,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: 20,
              itemBuilder: (context, index) {
                return TaskListTile();
              },
              separatorBuilder: (BuildContext context, int index) {
                return const Divider(
                  height: 4,
                );
              },
            ),
          ),
        ],
      ),
    ),

      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddNewTaskScreen(),
            ),
          );
        },
      ),
    );
  }
}


