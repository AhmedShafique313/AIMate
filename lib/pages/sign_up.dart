import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 8,
                ),
                Text(
                  'Create your ',
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
                Text(
                  'Account',
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'GentiumPlus'),
                )
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 8,
                ),
                Opacity(
                  opacity: 0.5,
                  child: Text(
                    'Join AIMate and start your journey to enhance',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        fontFamily: 'Halant'),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 8,
                ),
                Opacity(
                    opacity: 0.5,
                    child: Text(
                      'productivity and well-being',
                      style: TextStyle(
                          height: 1,
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Halant'),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
