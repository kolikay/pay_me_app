import 'package:flutter/material.dart';
import 'package:pay_me_app/constants/appColor.dart';
import 'package:pay_me_app/widgets/reusesable_widget/normal_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pay_me_app/widgets/reusesable_widget/reusaable_textformfield.dart';
import 'package:pay_me_app/widgets/reusesable_widget/reuseable_button.dart';

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({
    Key? key,
  }) : super(key: key);
  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  final _newpassword1 = TextEditingController();
  final _newpassword2 = TextEditingController();
  bool _isObscure = true;
  bool _isObscure1 = true;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left:30.0, right: 30),
        child: Column(
          children: [
            const SizedBox(
                  height: 80,
                ),
            NormalText(
              text: 'Change Password',
              size: 32,
              fontWeight: FontWeight.w600,
            ),
            const SizedBox(
              height: 16,
            ),
            NormalText(
              text: 'Please enter your new password',
              size: 16,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(
              height: 24.h,
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  MyTextField(
                    controller: _newpassword1,
                    obcureText: _isObscure,
                    keyBoardType: TextInputType.text,
                    isPassword: false,
                    isReadOnly: false,
                    labelText: 'Password',
                    sufixIcon: IconButton(
                      color: Colors.black54,
                      icon: Icon(
                          _isObscure ? Icons.visibility : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  MyTextField(
                    validator: (pass) {
                      if (_newpassword2.text != _newpassword1.text) {
                        return 'Password Dont match';
                      }
                      return null;
                    },
                    controller: _newpassword2,
                    obcureText: _isObscure,
                    keyBoardType: TextInputType.emailAddress,
                    isPassword: false,
                    isReadOnly: false,
                    labelText: 'Confirm password',
                    sufixIcon: IconButton(
                      color: Colors.black54,
                      icon: Icon(
                          _isObscure1 ? Icons.visibility : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          _isObscure1 = !_isObscure1;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            ReuseableButton(
              width: 327,
              text: 'Submit',
              textSize: 14.sp,
              onPressed: () {
                if (_formKey.currentState!.validate()) {}
              },
            ),
          ],
        ),
      ),
    ));
  }
}
