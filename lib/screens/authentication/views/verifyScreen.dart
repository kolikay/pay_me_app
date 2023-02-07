import 'package:flutter/material.dart';
import 'package:pay_me_app/constants/appColor.dart';
import 'package:pay_me_app/screens/homeScreen.dart';
import 'package:pay_me_app/widgets/reusesable_widget/normal_text.dart';
import 'package:pay_me_app/widgets/reusesable_widget/reuseable_button.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({super.key});

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  // controller to access pin text input
  final pinController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
                size: 20,
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            NormalText(
              text: 'Verification',
              size: 32,
              fontWeight: FontWeight.w600,
            ),
            const SizedBox(
              height: 16,
            ),
            NormalText(
              text: 'Enter the code sent to your nuber',
              size: 16,
              fontWeight: FontWeight.w500,
            ),
            const SizedBox(
              height: 30,
            ),
            Form(
              child: PinCodeTextField(
                controller: pinController,
                appContext: context,
                length: 4,
                obscureText: true,
                obscuringCharacter: '*',
                blinkWhenObscuring: true,
                animationType: AnimationType.fade,
                validator: (v) {
                  if (v!.length < 4) {
                    return "Pin Must be 4 digits";
                  } else {
                    return null;
                  }
                },
                pinTheme: PinTheme(
                  fieldWidth: 65,
                  selectedColor: Colors.white,
                  inactiveColor: Colors.grey,
                  selectedFillColor: Colors.white,
                  inactiveFillColor: Colors.white,
                  shape: PinCodeFieldShape.underline,
                ),
                cursorColor: Colors.black,
                animationDuration: const Duration(milliseconds: 300),
                enableActiveFill: true,
                keyboardType: TextInputType.number,

                // onCompleted: (v) {
                //   debugPrint("Completed");
                // },
                // onTap: () {
                //   print("Pressed");
                // },
                onChanged: (value) {
                  setState(() {});
                },
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ReuseableButton(
              onPressed: () {
                    Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: ((context) => const HomePage()),
                    ),
                  );
              },
              text: 'Sign UP',
              width: 400,
            ),
          ],
        ),
      ),
    );
  }
}
