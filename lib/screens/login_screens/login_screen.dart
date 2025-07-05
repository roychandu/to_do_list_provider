import 'package:flutter/material.dart';
import 'package:to_do_list_provider/common_widgets/Custom_button.dart';
import 'package:to_do_list_provider/common_widgets/Input_text.dart';
import 'package:to_do_list_provider/common_widgets/divider_with_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController passwordText = TextEditingController();
  TextEditingController usernamedText = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            spacing: 40,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Login',
                style: TextStyle(color: Colors.white, fontSize: 32),
              ),
              CustomInputText(
                text: 'Username',
                hint: 'Enter your Username',
                controller: usernamedText,
              ),
              CustomInputTextWithVisiable(
                text: 'Password',
                hint: 'Enter your Password',
                controller: passwordText,
              ),
              SizedBox(
                width: double.infinity,
                child: CustomelevatedButton(text: 'Login', onPressed: () {}),
              ),
              DividerWithText(),
              SizedBox(
                width: double.infinity,
                child: CustomOutlinedButton(
                  text: 'Resigter with Google',
                  onPressed: () {},
                  image: Image.asset('assets/google.png'),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: CustomOutlinedButton(
                  text: 'Resigter with facebook',
                  onPressed: () {},
                  image: Image.asset(
                    'assets/facebook.png',
                    width: 32,
                    height: 32,
                  ),
                ),
              ),
              Center(
                child: CustomTextButton(
                  text: "Don't have an account? Register",
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
