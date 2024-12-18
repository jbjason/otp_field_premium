<img width=30% height=14% src="https://github.com/user-attachments/assets/71cb7a16-e6f0-4fb2-80a4-19301d2819c3">

This is a simple yet highly customizable package for all kind of users.

## Features

- 🛠️ **Highly customizable**: Style the OTP fields as you need.
- 🔢 **Variable OTP length**: Configure fields to accept OTPs of any length.
- 🔐 **Secure input**: Optionally obscure OTP input for sensitive use cases.
- ⌨️ **Keyboard support**: Automatically focuses and handles input navigation.
- 🗎🗎 **Copy Paste**: Easy otp Copy Paste option.
- ❍  **Otp-Field Shape**: User can use Square, Underline, Circle shape for the otp-field.

## Installation

Add the following line to your `pubspec.yaml`:

```dart
dependencies:
  otp_field_premium: ^0.0.8  //Run flutter pub get to install the package.
```

## Usage
Here's a quick example to get started:

```dart
import 'package:otp_field_premium/otp_field_premium.dart';

  OTPFieldPremium(
    length: 6,
    onSubmit: (pin) {
      print("Entered OTP: $pin");
    },
  ),
```
### Shapes
1. shape = OtpFiledShape.square
2. shape = OtpFiledShape.underscore
3. shape = OtpFiledShape.circular


<img width=30% height=14% src="https://github.com/user-attachments/assets/8e6e51c4-036a-4daf-9ed5-e5f6227e9fef"> <img width=30% height=14% src="https://github.com/user-attachments/assets/9bcf9725-9ec1-422b-99d7-a9d1ae8c6050"> <img width=30% height=14% src="https://github.com/user-attachments/assets/f9c8f378-e92c-428c-8c49-f7a02c73679e">

## Parameters

```dart
  // set how many field you require **maximum 8**
  final int length;
  // returns the otp-field value if its **valid** 
  final Function(String val) onSubmit;
  // set borderRadius of otp-field
  final double borderRadius;
  // set the width of border while the otp-field is selected
  final double focusBorderWidth;
  // set the color of border while the otp-field is selected
  final Color focusBorderColor;
  // set the color of otp-field background while the otp-field is selected
  final Color focusFillColor;
  // set the idle(initial/unfocuse) boder color of the otp-field. 
  final double unFocusBorderWidth;
  // set the color of border while the otp-field is selected
  final Color unFocusBorderColor;
   // set the color of otp-field background while the otp-field is selected
  final Color unFocusFillColor;
  // set the width of border while the otp-field is empty
  final double errorBorderWidth;
  // set the color of border while the otp-field is selected
  final Color errorBorderColor;
   // set the color of otp-field background while the otp-field is selected
  final Color errorFillColor;
  // set the density of the shadow if u need shadow
  final double shadowElevation;
  // set the color of shadow
  final Color shodowColor;
  // if u want to hide otp text then set this value hideText=true
  final bool hideText;
  // there are 3 types of shape currently 1.OtpFiledShape.underscore 2.OtpFiledShape.square 3. OtpFiledShape.circular
  final OtpFiledShape otpFiledShape;
```

## Example
Check out the full example in the [`example`](https://pub.dev/packages/otp_field_premium/example) folder.

## License
This project is licensed under the MIT License.

## Contributions
Contributions are welcome! Feel free to file issues or submit pull requests to improve the package (https://github.com/jbjason/otp_field_premium)

## Support
For questions or suggestions, contact me via jubayeral040@gmail.com.

Check out the documentation on pub.dev for more details.

### Happy coding! 🚀
