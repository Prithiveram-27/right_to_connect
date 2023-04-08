import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import '../Constants/string_constants.dart';
import '../Constants/color_constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            StringConstants.getText(StringConstants.otpVerification),
            style: const TextStyle(
              color: ColorConstants.textColor,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            StringConstants.getText(StringConstants.otpConfirmation),
            style: const TextStyle(
              color: ColorConstants.textColor,
              fontSize: 16,
              fontWeight: FontWeight.normal,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            StringConstants.getText(StringConstants.enterMobileNumber),
            style: const TextStyle(
              color: ColorConstants.textColor,
              fontSize: 12,
              fontWeight: FontWeight.normal,
            ),
          ),
          const SizedBox(
            height: 0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: IntlPhoneField(
              dropdownDecoration: const BoxDecoration(),
              decoration: const InputDecoration(
                labelText: '000-00-00-000',
                border: OutlineInputBorder(
                  borderSide: BorderSide(),
                ),
              ),
              initialCountryCode: 'IN',
              onChanged: (phone) {},
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            style: TextButton.styleFrom(
              fixedSize: Size(width - 40, 50),
              backgroundColor: ColorConstants.buttonColor,
            ),
            onPressed: () {},
            child: Text(
              StringConstants.getText(StringConstants.btnGetOtp),
              style: const TextStyle(
                color: ColorConstants.buttonTxtColor,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
