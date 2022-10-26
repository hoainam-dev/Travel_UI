import 'package:flutter/material.dart';
import 'CheckEmailUI.dart';

class ForgotPassword extends StatelessWidget {
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
              child: Row(
                children: [
                  Image.asset(
                    'images/logo.png',
                    width: 40,
                  ),
                  Image.asset('images/Vector 6.png'),
                  Image.asset('images/airPlane.png'),
                  Image.asset('images/linePlane.png'),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text('Forgot Password',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                    fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 20,
            ),
            Text('Input your email, we will send you an'),
            const SizedBox(
              height: 5,
            ),
            Text('instruction to reset your password.'),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Email',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const TextField(),
            const SizedBox(
              height: 50,
            ),
            Container(
              color: const Color.fromRGBO(0, 206, 166, 1),
              height: 40,
              width: MediaQuery.of(context).size.width,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    side: const BorderSide(
                        width: 2, color: Color.fromRGBO(0, 206, 166, 1))),
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CheckEmail()),
                  )
                },
                child: const Text(
                  'SEND',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 90,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Back to ', style: TextStyle(color: Color(0xff777777))),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
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
