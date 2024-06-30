import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  String emailError = '';
  String passwordError = '';

  void _login() {
    setState(() {
      emailError = '';
      passwordError = '';

      if (emailController.text != 'Hassan') {
        emailError = 'Wrong Name';
      } else if (passwordController.text != '12345678') {
        passwordError = 'Wrong Password';
      }

      if (emailError.isEmpty && passwordError.isEmpty) {
        Navigator.pushReplacementNamed(context, "/home");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, // Prevent the image from moving up
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(0, 40, 83, 1),
                    Color(0xff3686c5),
                    Color(0xff1d203e)
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              width: double.infinity,
              height: double.infinity,
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 33),
                  Text(
                    "Log in",
                    style: TextStyle(fontSize: 33, fontFamily: "myfont"),
                  ),
                  SizedBox(height: 33),
                  SvgPicture.asset(
                    "assets/icons/login.svg",
                    width: 300,
                  ),
                  SizedBox(height: 22),
                  if (emailError.isNotEmpty)
                    Text(
                      emailError,
                      style: TextStyle(color: Colors.red),
                    ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        _buildTextField(
                          context: context,
                          labelText: "Your Email :",
                          hintText: "Enter your email",
                          controller: emailController,
                          labelColor: Colors.black,
                        ),
                        SizedBox(height: 10),
                        if (passwordError.isNotEmpty)
                          Text(
                            passwordError,
                            style: TextStyle(color: Colors.red),
                          ),
                        _buildTextField(
                          context: context,
                          labelText: "Password :",
                          hintText: "Enter your password",
                          obscureText: true,
                          controller: passwordController,
                          labelColor: Colors.black,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: _login,
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.purple),
                      padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 106, vertical: 10),
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(27),
                        ),
                      ),
                    ),
                    child: Text(
                      "login",
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have account? "),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "/signup");
                        },
                        child: Text(
                          " Sign up",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff3686c5),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0,
              child: Image.asset(
                "assets/images/main_top.png",
                width: 111,
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(
                "assets/images/login_bottom.png",
                width: 111,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField({
    required BuildContext context,
    required String labelText,
    required String hintText,
    required TextEditingController controller,
    bool obscureText = false,
    required Color labelColor,
  }) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.85,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8, top: 8),
            child: Text(
              labelText,
              style: TextStyle(
                color: labelColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Container(
            decoration: BoxDecoration(
              color: Color(0xffe1bee7),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              controller: controller,
              obscureText: obscureText,
              decoration: InputDecoration(
                hintText: hintText,
                border: InputBorder.none,
                contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
