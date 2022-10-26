import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'ForgotPasswordUI.dart';
import 'SignUpUI.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                width: 800,
                height: 250,
                decoration: const BoxDecoration(color: Color(0xff00BC97)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 20,
                    ),
                    Image.asset(
                      'images/logo.png',
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 130, 0, 0),
                width: 800,
                height: 700,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100),
                        topRight: Radius.circular(100))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 30, right: 30, top: 30),
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 30, right: 30, top: 30),
                      child: Text(
                        'Welcome Back, Daddy',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff777777)),
                      ),
                    ),
                    Padding(
                        padding:
                        const EdgeInsets.only(left: 30, right: 30, top: 30),
                        child: Form(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Email",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              TextFormField(
                                // controller: emailController,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return ("Vui long nhap Email");
                                  }
                                  if (!RegExp(
                                      "^[a-zA-Z0-9+_.-]+@[a-z0-9A-Z.-]+.[a-z]")
                                      .hasMatch(value)) {
                                    return ("Vui long nhap Email hop le");
                                  }
                                  return null;
                                },
                                onSaved: (value) {
                                  // emailController.text = value!;
                                },
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              const Text(
                                "Password",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              TextFormField(
                                // controller: passwordController,
                                validator: (value) {
                                  RegExp regex = RegExp(r'^.{6,}$');
                                  if (value!.isEmpty) {
                                    return ("Mật khẩu bắt buộc để đăng nhập");
                                  }
                                  if (!regex.hasMatch(value)) {
                                    return ("Mật khẩu không hợp lệ");
                                  }
                                },
                                onSaved: (value) {
                                  // passwordController.text = value!;
                                },
                                obscureText: true,
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              const Text(
                                "Forgot password",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              ElevatedButton(
                                  onPressed: (){},
                                  style: ElevatedButton.styleFrom(
                                      primary: const Color(0xff00BC97)),
                                  child: const SizedBox(
                                      height: 50,
                                      child: Center(
                                          child: Text(
                                            "Login",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          )))),
                              const SizedBox(
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [Text("Or sign in with")],
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'images/Facebook.png',
                                    width: 50,
                                    height: 50,
                                    fit: BoxFit.cover,
                                  ),
                                  const SizedBox(
                                    width: 30,
                                  ),
                                  Image.asset(
                                    'images/Kakao.png',
                                    width: 50,
                                    height: 50,
                                    fit: BoxFit.cover,
                                  ),
                                  const SizedBox(
                                    width: 30,
                                  ),
                                  Image.asset(
                                    'images/Line.png',
                                    width: 50,
                                    height: 50,
                                    fit: BoxFit.cover,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                            Center(
                              child: RichText(
                                text: TextSpan(
                                    text: 'Don\'t have an account?',
                                    style: TextStyle(color: Colors.black, fontSize: 16),
                                    children: <TextSpan>[
                                      TextSpan(text: ' Sign up',
                                          style: TextStyle(color: Color(0xff00BC97), fontSize: 16),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {print("click");}
                                      )
                                    ]
                                ),
                              ),
                            )
                          ]),
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
