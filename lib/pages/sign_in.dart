import 'package:aimate/pages/dashboard.dart';
import 'package:aimate/pages/sign_up.dart';
import 'package:flutter/material.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                SizedBox(
                  width: 8,
                ),
                Text(
                  'Welcome back to ',
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'GentiumPlus'),
                ),
                Text(
                  'AI',
                  style: TextStyle(
                      fontFamily: 'GentiumPlus',
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffC366BA)),
                ),
                Text(
                  'Mate ',
                  style: TextStyle(
                      fontFamily: 'GentiumPlus',
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff2A8FBA)),
                ),
              ],
            ),
            const Row(
              children: [
                SizedBox(
                  width: 8,
                ),
                Opacity(
                  opacity: 0.5,
                  child: Text(
                    'Please login to continue your journey with AIMate',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        fontFamily: 'Halant'),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 5),
              child: TextField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                            width: 2, color: Color(0xffC366BA))),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                            width: 2, color: Color(0xffC366BA))),
                    fillColor: const Color.fromARGB(209, 25, 31, 36),
                    hintText: 'Email address',
                    hintStyle: const TextStyle()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 5),
              child: TextField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                            width: 2, color: Color(0xffC366BA))),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                            width: 2, color: Color(0xffC366BA))),
                    fillColor: const Color.fromARGB(209, 25, 31, 36),
                    hintText: 'Password',
                    hintStyle: const TextStyle()),
              ),
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                const Opacity(
                  opacity: 0.5,
                  child: Text(
                    'New to AIMate?',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        fontFamily: 'Halant'),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignupPage()));
                  },
                  child: const Text(
                    'Register',
                    style: TextStyle(
                        color: Color(0xff2A8FBA),
                        fontSize: 22,
                        fontWeight: FontWeight.w300,
                        fontFamily: 'Halant'),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
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
                            const MaterialStatePropertyAll(Color(0xffC366BA))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DashboardScreen()));
                    },
                    child: const Text(
                      'Sign in',
                      style: TextStyle(
                          fontFamily: 'Halant',
                          fontSize: 24,
                          fontWeight: FontWeight.w300,
                          color: Colors.black),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
