import 'package:flutter/material.dart';
import 'SignUpUI.dart';

class CheckEmail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: 130,
                color: Color.fromRGBO(0, 206, 166, 1),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Text('Hello World'),
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  'images/logo.png',
                                  width: 40,
                                ),
                                Image.asset('images/Vector 6.png'),
                                Image.asset('images/airPlane.png'),
                                Image.asset('images/linePlane.png'),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                )),
            const SizedBox(
              height: 20,
            ),
            const Text('Check Email',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                    fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 20,
            ),
            Text('Please check your email for the instructions on'),
            const SizedBox(
              height: 5,
            ),
            Text('how to reset your password.'),
            const SizedBox(
              height: 20,
            ),
            Center(
                child: Image.asset(
              'images/email.png',
            )),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Back to ', style: TextStyle(color: Color(0xff777777))),
                TextButton(
                  onPressed: () {
                    Navigator.push((context),
                        MaterialPageRoute(builder: (context) => SignUp()));
                  },
                  child: Column(
                    children: [
                      Text(
                        'Sign in',
                        style: TextStyle(color: Color(0xff00BC97)),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
