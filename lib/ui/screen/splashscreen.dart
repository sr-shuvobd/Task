import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taskapp_m11/ui/screen/auts/login_screen.dart';
import 'package:taskapp_m11/ui/utils/assets_utils.dart';
import 'package:taskapp_m11/ui/widgets/screen_background.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    NavigetToLogin();
  }

  void NavigetToLogin(){
    Future.delayed(Duration(seconds: 3)).then((value) =>  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => LoginScreen()), (route) => false),);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ScreenBackground(
        child: Center(
          child: SvgPicture.asset(AssetsUtils.logoSvc,width: 90,),

        ),
      ),
    );
  }
}
