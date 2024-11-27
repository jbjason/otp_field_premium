# otp_field_premium
 
This is a simple yet premium customizable package for all kind of users.

# OTP Field

[![0.0.3]](https://pub.dev/packages/otp_field_premium)  
A customizable and easy-to-use OTP (One-Time Password) input field package for Flutter, designed to enhance user experience with beautiful UI and flexible configurations.

## Features

- 🛠️ **Highly customizable**: Style the OTP fields as you need.
- 🔢 **Variable OTP length**: Configure fields to accept OTPs of any length.
- 🔐 **Secure input**: Optionally obscure OTP input for sensitive use cases.
- ⌨️ **Keyboard support**: Automatically focuses and handles input navigation.

## Installation

Add the following line to your `pubspec.yaml`:

```yaml
dependencies:
  otp_field: ^0.0.2
Run flutter pub get to install the package.

## Usage
Here's a quick example to get started:

```markdown
import 'package:otp_field/otp_field.dart';

class OTPExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OTP Example"),
      ),
      body: Center(
        child: OTPField(
          length: 6,
          onSubmit: (pin) {
            print("Entered OTP: $pin");
          },
        ),
      ),
    );
  }
}
```dart

## Parameters
Parameter	Type	Default	Description
length	int	6	Number of fields for OTP input.
onCompleted	Function(String)	null	Callback when all fields are filled.
fieldStyle	OTPFieldStyle	Default styling	Style properties like border color, focus color, and active field styling.
obscureText	bool	false	Whether to hide the entered text (useful for security).
autoFocus	bool	true	Whether the first field should be auto-focused.
Screenshots
```markdown
OTPField(
  length: 4,
  fieldStyle: OTPFieldStyle(
    activeBorderColor: Colors.green,
    focusBorderColor: Colors.orange,
    inactiveBorderColor: Colors.grey,
  ),
  obscureText: true,
  onCompleted: (pin) {
    print("Received OTP: $pin");
  },
);
```dart

## License
This project is licensed under the MIT License.

## Support
If you have any questions or issues, feel free to open an issue on GitHub or reach out to us via email.

### Happy coding! 🚀
