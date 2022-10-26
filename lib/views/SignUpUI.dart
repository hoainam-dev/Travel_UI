import 'package:flutter/material.dart';
import 'ForgotPasswordUI.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _MySignUpfulWidgetState();
}

class _MySignUpfulWidgetState extends State<SignUp> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.red;
    }

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
            const Text('Sign Up',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Checkbox(
                  checkColor: Colors.white,
                  fillColor: MaterialStateProperty.resolveWith(getColor),
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
                Text(
                  'Traveler',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                SizedBox(
                  width: 60,
                ),
                Checkbox(
                  checkColor: Colors.white,
                  fillColor: MaterialStateProperty.resolveWith(getColor),
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
                Text(
                  'Guide',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Email',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const TextField(),
            const SizedBox(
              height: 20,
            ),
            const Text('Password',
                style: TextStyle(fontWeight: FontWeight.bold)),
            const TextField(
              obscureText: true,
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ForgotPassword()),
                  );
                },
                child: Column(
                  children: [Text('Forgot Password')],
                )),
            // const Text(
            //   'Forgot Password?',
            //   style: TextStyle(color: Color(0xff777777)),
            // ),
            const SizedBox(
              height: 20,
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
                onPressed: () => {},
                child: const Text(
                  'SIGN IN',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                "or sign in with",
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('images/Facebook.png'),
                const SizedBox(
                  width: 30,
                ),
                Image.asset('images/Kakao.png'),
                const SizedBox(
                  width: 30,
                ),
                Image.asset('images/Line.png'),
              ],
            ),
            const SizedBox(
              height: 70,
            ),
            Center(
              child: Text.rich(TextSpan(
                  text: "Don't have an account?",
                  style: TextStyle(color: Color(0xff777777)),
                  children: [
                    TextSpan(
                      text: " Sign Up",
                      style: TextStyle(color: Color(0xff00BC97)),
                    )
                  ])),
            )
          ],
        ),
      ),
    );
  }
}
