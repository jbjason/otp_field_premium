import 'package:flutter/material.dart';
import 'package:otp_field_premium/config/theme/theme.dart';
import 'package:otp_field_premium/feature/presentation/widgets/otp_field.dart';

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
        body: Center(child: OtpField(length: 4, onSubmit: (val) {})),
      ),
    );
  }
}
