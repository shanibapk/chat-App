import 'package:flutter/material.dart';
import 'package:futura_project/my_button.dart';
import 'package:futura_project/my_text_field.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              SizedBox(
                height: 50,
              ),
              Icon(
                Icons.message_rounded,
                size: 80,
                color: Colors.grey[800],
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Let's create new account for you",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 50,
              ),
              MyTextField(
                controller: emailController,
                hintText: 'Enter your Email',
                obscureText: false,
              ),
              SizedBox(
                height: 20,
              ),
              MyTextField(
                controller: passwordController,
                hintText: 'Enter your Password',
                obscureText: true,
              ),
              SizedBox(
                height: 20,
              ),
              MyTextField(
                controller: confirmpasswordController,
                hintText: 'Confirm your Password',
                obscureText: true,
              ),
              SizedBox(
                height: 35,
              ),
              MyButton(
                  onTap: () {
                    print('button clicked');
                  },
                  text: 'SignUp'),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already a member?'),
                  SizedBox(
                    width: 4,
                  ),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: Text(
                      'Login now',
                      style: TextStyle(fontWeight: FontWeight.w900),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
