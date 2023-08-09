import 'package:flutter/material.dart';
import 'package:taskapp_m11/ui/screen/auts/login_screen.dart';
import 'package:taskapp_m11/ui/widgets/screen_background.dart';

class ResetPasswoardScreen extends StatefulWidget {
  const ResetPasswoardScreen({Key? key}) : super(key: key);

  @override
  State<ResetPasswoardScreen> createState() => _ResetPasswoardScreenState();
}

class _ResetPasswoardScreenState extends State<ResetPasswoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 68,
              ),
              const Text(
                "Set Passwoard",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "Minimun passwoar shold be 8 leters Wheat number and symbol.",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 26,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Passwoard",
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Confirm Passwoard",
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
                    },
                    child: const Text("Confirm")),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Have an account?",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()),
                          (route) => false);
                    },
                    child:const Text("Sing in"),
                  ),
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}
