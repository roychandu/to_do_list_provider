import 'package:flutter/material.dart';
import 'package:to_do_list_provider/common_widgets/Custom_button.dart';
import 'package:to_do_list_provider/common_widgets/Input_text.dart';
import 'package:to_do_list_provider/common_widgets/divider_with_text.dart';
import 'package:to_do_list_provider/screens/login_screens/login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController passwordText = TextEditingController();
  TextEditingController confirmPasswordText = TextEditingController();
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
            spacing: 30,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Register',
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
              CustomInputTextWithVisiable(
                text: 'Confirm Password',
                hint: 'Re-Write your password',
                controller: confirmPasswordText,
              ),
              SizedBox(
                width: double.infinity,
                child: CustomelevatedButton(text: 'Register', onPressed: () {}),
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
                  text: 'Already have an account? Login',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
