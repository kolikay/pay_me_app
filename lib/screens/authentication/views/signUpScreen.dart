import 'package:flutter/material.dart';
import 'package:pay_me_app/constants/appColor.dart';
import 'package:pay_me_app/screens/authentication/views/loginScreen.dart';
import 'package:pay_me_app/screens/authentication/views/verifyScreen.dart';
import 'package:pay_me_app/widgets/reusesable_widget/normal_text.dart';
import 'package:pay_me_app/widgets/reusesable_widget/reuseable_button.dart';

class SignUpScrren extends StatefulWidget {
  const SignUpScrren({super.key});

  @override
  State<SignUpScrren> createState() => _SignUpScrrenState();
}

class _SignUpScrrenState extends State<SignUpScrren> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 80,
              ),
              NormalText(
                text: 'Create Account',
                size: 32,
                fontWeight: FontWeight.w600,
              ),
              const SizedBox(
                height: 16,
              ),
              NormalText(
                text: 'Get Started Now',
                size: 16,
                fontWeight: FontWeight.w500,
              ),
              const SizedBox(
                height: 70,
              ),
              NormalText(
                text: 'Number',
                size: 16,
                fontWeight: FontWeight.w500,
              ),
              const TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 20.00),
                  hintText: '08088888888',
                  hintStyle: TextStyle(color: Colors.grey),
                  suffixIcon: Icon(
                    Icons.phone,
                    color: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              NormalText(
                text: 'Password',
                size: 16,
                fontWeight: FontWeight.w500,
              ),
              const TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 20.00),
                  hintText: '**********',
                  hintStyle: TextStyle(color: Colors.grey),
                  suffixIcon: Icon(
                    Icons.visibility,
                    color: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              NormalText(
                text: 'Confirm PAssword',
                size: 16,
                fontWeight: FontWeight.w500,
              ),
              const TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 20.00),
                  hintText: '**********',
                  hintStyle: TextStyle(color: Colors.grey),
                  suffixIcon: Icon(
                    Icons.visibility,
                    color: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ReuseableButton(
                onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: ((context) => const VerifyScreen()),
                      ),
                    );
                },
                text: 'Next',
                width: 400,
              ),
              const SizedBox(
                height: 30,
              ),
              const Divider(
                color: Colors.black,
                thickness: 0.7,
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(width: 1, color: AppColor.mainColor),
                ),
                height: 50,
                width: 366,
                child: const Center(
                  child: Image(
                    image: AssetImage('assets/google.png'),
                    height: 20,
                    width: 20,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: ((context) => const LoginScreen()),
                      ),
                    );
                  },
                  child: RichText(
                    text: const TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Have an account? ',
                            style: TextStyle(color: Colors.black, fontSize: 16)),
                        TextSpan(
                          text: 'Sign In',
                          style: TextStyle(
                              color: AppColor.mainColor,
                              fontWeight: FontWeight.w700,
                              fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
