import 'package:flutter/material.dart';
import 'package:taskapp_m11/ui/widgets/task_list_tile.dart';
import 'package:taskapp_m11/ui/widgets/user_profile_banner.dart';

class CancelTaskScreen extends StatefulWidget {
  const CancelTaskScreen({Key? key}) : super(key: key);

  @override
  State<CancelTaskScreen> createState() => _CancelTaskScreenState();
}

class _CancelTaskScreenState extends State<CancelTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
            children: [
            const  UserProfileBanner(),
              const Padding(
                padding: const EdgeInsets.all(8.0),
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
        ));
  }
}
