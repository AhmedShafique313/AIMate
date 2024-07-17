import 'dart:async';
import 'package:aimate/pages/Get_Started.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 6), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const GetStartedScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'images/main_gif.gif',
              height: 600,
              width: 400,
            ),
            const SizedBox(height: 80),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'AI',
                  style: TextStyle(
                      fontSize: 64,
                      fontFamily: 'Calistoga',
                      fontWeight: FontWeight.normal,
                      color: Color(0xffC366BA)),
                ),
                Text(
                  'Mate',
                  style: TextStyle(
                      fontSize: 64,
                      fontFamily: 'Calistoga',
                      fontWeight: FontWeight.normal,
                      color: Color(0xff2A8FBA)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
