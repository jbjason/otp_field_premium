
This is a simple yet highly customizable package for all kind of users.

## Features

- 🛠️ **Highly customizable**: Style the OTP fields as you need.
- 🔢 **Variable OTP length**: Configure fields to accept OTPs of any length.
- 🔐 **Secure input**: Optionally obscure OTP input for sensitive use cases.
- ⌨️ **Keyboard support**: Automatically focuses and handles input navigation.

## Installation

Add the following line to your `pubspec.yaml`:

```dart
dependencies:
  otp_field: ^0.0.2  //Run flutter pub get to install the package.
```

## Usage
Here's a quick example to get started:

```dart
import 'package:otp_field_premium/otp_field_premium/otp_field_premium.dart';

  OTPField(
    length: 6,
    onSubmit: (pin) {
      print("Entered OTP: $pin");
    },
  ),
```

## Parameters

```dart
  // set how many field you require **maximum 8**
  final int length;
  // returns the otp-field value if its **valid** 
  final Function(String val) onSubmit;
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
  // there are two types of shape currently 1.OtpFiledShape.underscore 2.OtpFiledShape.square 
  final OtpFiledShape otpFiledShape;
```

## License
This project is licensed under the MIT License.

## Contributions
Contributions are welcome! Feel free to file issues or submit pull requests to improve the package
github: (https://github.com/jbjason/otp_field_premium)

## Support
For questions or suggestions, contact me via jubayeral040@gmail.com.

Check out the documentation on pub.dev for more details.

### Happy coding! 🚀
