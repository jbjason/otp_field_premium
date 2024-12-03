// ignore_for_file: public_member_api_docs
import 'package:flutter/material.dart';
import 'package:otp_field_premium/config/theme/theme.dart';
import 'package:otp_field_premium/otp_field_premium.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.light(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset("assets/v_code.jpg"),
                Text(
                  'Get Your Code',
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5),
                Text(
                  "Please enter the 4 digit code that send to your \nphone  \"01*********\"",
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: const Color(0xFF757575)),
                ),
                const SizedBox(height: 25),
                OtpFieldPremium(
                  length: 4,
                  onSubmit: (val) {},
                  focusBorderWidth: .7,
                  focusBorderColor: const Color(0xFF30BCED),
                  focusFillColor: const Color(0xFFFAFAFA),
                  unFocusBorderWidth: .3,
                  unFocusBorderColor: const Color(0xFFD6D6D6),
                  unFocusFillColor: const Color(0xFFFAFAFA),
                  errorBorderWidth: 1,
                  errorBorderColor: Colors.red,
                  errorFillColor: const Color(0xFFFAFAFA),
                  shadowElevation: 0,
                  shodowColor: Colors.transparent,
                  hideText: false,
                  otpFiledShape: OtpFiledShape.square,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Didn't receive any code?  ",
                          style: TextStyle(color: Color(0xFF757575))),
                      Text(
                        "Resend OTP",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF30BCED),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Submit"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
