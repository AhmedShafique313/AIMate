import 'dart:async';
import 'package:aimate/pages/Get_Started.dart';
import 'package:flutter/material.dart';
import 'package:gif/gif.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const GetStartedScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          const SizedBox(height: 200),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Gif(
                  autostart: Autostart.loop,
                  image: const AssetImage(
                    'images/main_gif.gif',
                  )),
              const Text(
                'AI',
                style: TextStyle(
                    fontSize: 72,
                    fontWeight: FontWeight.normal,
                    color: Color(0xffC366BA)),
              ),
              const Text(
                'Mate',
                style: TextStyle(
                    fontSize: 72,
                    fontWeight: FontWeight.normal,
                    color: Color(0xff2A8FBA)),
              )
            ],
          )
        ],
      ),
    );
  }
}
