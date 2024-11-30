import 'package:flutter/material.dart';
import 'package:otp_field_premium/config/theme/theme.dart';
import 'package:otp_field_premium/core/util/mycolor.dart';
import 'package:otp_field_premium/otp_field_premium/otp_field_premium.dart';

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
        body: Center(
          child: OtpFieldPremium(
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
        ),
      ),
    );
  }
}
