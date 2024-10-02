import 'package:flutter/material.dart';
import 'package:graduation_proj/config/theme/theme_manager.dart';
import 'package:graduation_proj/screens/home_screen/views/home_screen_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeScreenView(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ThemeManager.lightTheme.scaffoldBackgroundColor,
        image: const DecorationImage(
          image: AssetImage(
            'lib/assets/images/SplashScreen.png',
          ),
        ),
      ),
      child: const Scaffold(
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
