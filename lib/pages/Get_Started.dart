import 'package:aimate/pages/sign_in.dart';
import 'package:aimate/pages/sign_up.dart';
import 'package:flutter/material.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({super.key});

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            const Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  'AI',
                  style: TextStyle(
                      fontSize: 26,
                      fontFamily: 'Calistoga',
                      fontWeight: FontWeight.normal,
                      color: Color(0xffC366BA)),
                ),
                Text(
                  'Mate',
                  style: TextStyle(
                      fontSize: 26,
                      fontFamily: 'Calistoga',
                      fontWeight: FontWeight.normal,
                      color: Color(0xff2A8FBA)),
                )
              ],
            ),
            const Row(
              children: [
                SizedBox(width: 10),
                Text(
                  'Your Personal Assistant',
                  style: TextStyle(
                      height: 1,
                      fontFamily: 'Halant',
                      fontSize: 26,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Opacity(
                  opacity: 0.5,
                  child: Text(
                    'Enhance your productivity health',
                    style: TextStyle(
                        height: 1,
                        fontFamily: 'Halant',
                        fontSize: 22,
                        fontWeight: FontWeight.w300),
                  ),
                )
              ],
            ),
            const Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Opacity(
                  opacity: 0.5,
                  child: Text(
                    'and daily life with advanced AI-',
                    style: TextStyle(
                        height: 1,
                        fontFamily: 'Halant',
                        fontSize: 22,
                        fontWeight: FontWeight.w300),
                  ),
                )
              ],
            ),
            const Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Opacity(
                  opacity: 0.5,
                  child: Text(
                    'Powered features',
                    style: TextStyle(
                        height: 1,
                        fontFamily: 'Halant',
                        fontSize: 22,
                        fontWeight: FontWeight.w300),
                  ),
                )
              ],
            ),
            Image.asset(
              'images/main_gif.gif',
              height: 500,
              width: 300,
            ),
            const SizedBox(height: 45),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: ButtonStyle(
                        padding:
                            const MaterialStatePropertyAll(EdgeInsets.all(20)),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 3, color: Color(0xffC366BA)),
                            borderRadius: BorderRadius.circular(30))),
                        backgroundColor:
                            const MaterialStatePropertyAll(Color(0xffFFFFFF))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignupPage()));
                    },
                    child: const Text(
                      'Sign up',
                      style: TextStyle(
                          fontFamily: 'Halant',
                          fontSize: 24,
                          fontWeight: FontWeight.w300,
                          color: Colors.black),
                    )),
                const SizedBox(
                  width: 50,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        padding:
                            const MaterialStatePropertyAll(EdgeInsets.all(20)),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 3, color: Color(0xff2A8FBA)),
                            borderRadius: BorderRadius.circular(30))),
                        backgroundColor:
                            const MaterialStatePropertyAll(Color(0xff191F24))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SigninPage()));
                    },
                    child: const Text(
                      'Sign in',
                      style: TextStyle(
                          fontFamily: 'Halant',
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.w300),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
