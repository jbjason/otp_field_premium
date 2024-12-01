import 'package:flutter/material.dart';
import 'package:otp_field_premium/config/theme/theme.dart';
import 'package:otp_field_premium/core/util/mycolor.dart';
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
        body: Padding(
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
                    .copyWith(color: MyColor.textThird),
              ),
              const SizedBox(height: 25),
              OtpFieldPremium(
                length: 4,
                onSubmit: (val) => print(val),
                focusBorderWidth: .7,
                focusBorderColor: MyColor.skyPrimary,
                focusFillColor: MyColor.cardBackgroundColor,
                unFocusBorderWidth: .3,
                unFocusBorderColor: MyColor.inActiveColor,
                unFocusFillColor: MyColor.cardBackgroundColor,
                errorBorderWidth: 1,
                errorBorderColor: Colors.red,
                errorFillColor: MyColor.cardBackgroundColor,
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
                        style: TextStyle(color: MyColor.textThird)),
                    Text(
                      "Resend OTP",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: MyColor.skyPrimary),
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
    );
  }
}
