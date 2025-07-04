import 'package:flutter/material.dart';
import 'package:to_do_list_provider/common_widgets/Custom_button.dart';
import 'package:to_do_list_provider/common_widgets/Input_text.dart';
import 'package:to_do_list_provider/common_widgets/divider_with_text.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
        ),
        body: Column(
          spacing: 30,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Register',
              style: TextStyle(color: Colors.white, fontSize: 32),
            ),
            CustomInputText(text: 'Username', hint: 'Enter your Username'),
            CustomInputText(text: 'Password', hint: 'Enter your Password'),
            CustomInputText(
              text: 'Confirm Password',
              hint: 'Re-Write your password',
            ),
            SizedBox(
              width: double.infinity,
              child: CustomelevatedButton(text: 'Register', onPressed: () {}),
            ),
            DividerWithText(),
          ],
        ),
      ),
    );
  }
}
