import 'package:flutter/material.dart';
import 'package:taskapp_m11/ui/widgets/screen_background.dart';
import 'package:taskapp_m11/ui/widgets/user_profile_banner.dart';

class AddNewTaskScreen extends StatelessWidget {
  const AddNewTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: ScreenBackground(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    UserProfileBanner(),
                    SizedBox(height: 16,),
                    const Text(
                      "Add your Task",
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 16,),
                    TextFormField(
                      decoration: InputDecoration(hintText: "Title"),
                    ),
                    SizedBox(height: 8,),
                    TextFormField(
                      maxLines: 4,
                      decoration: InputDecoration(hintText: "Description"),
                    ),
                    SizedBox(height: 16,),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {

                          },
                          child: Icon(Icons.keyboard_arrow_right)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
