import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../Constants/string_constants.dart';
import '../Constants/color_constants.dart';

enum MobileVerificationState { Mobile_SHOW_state, Otp_SHOW_state }

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  MobileVerificationState currentState = MobileVerificationState.Otp_SHOW_state;
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
            currentState == MobileVerificationState.Mobile_SHOW_state
                ? StringConstants.getText(StringConstants.otpConfirmation)
                : StringConstants.getText(StringConstants.enterOtpSent),
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
            currentState == MobileVerificationState.Mobile_SHOW_state
                ? StringConstants.getText(StringConstants.enterMobileNumber)
                : "",
            style: const TextStyle(
              color: ColorConstants.textColor,
              fontSize: 12,
              fontWeight: FontWeight.normal,
            ),
          ),
          const SizedBox(
            height: 0,
          ),
          currentState == MobileVerificationState.Mobile_SHOW_state
              ? Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
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
                )
              : Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                  child: Center(
                    child: PinCodeTextField(
                      length: 4,
                      obscureText: false,
                      animationType: AnimationType.fade,
                      pinTheme: PinTheme(
                          shape: PinCodeFieldShape.box,
                          borderRadius: BorderRadius.circular(5),
                          fieldHeight: 50,
                          fieldWidth: 40,
                          activeFillColor: ColorConstants.textColor,
                          activeColor: ColorConstants.textColor,
                          inactiveColor: ColorConstants.textColor),
                      animationDuration: const Duration(milliseconds: 300),
                      //backgroundColor: Constants.secondaryColor,
                      enableActiveFill: false,
                      // controller: otpController,
                      onCompleted: (v) {
                        debugPrint("Completed");
                      },
                      onChanged: (value) {
                        debugPrint(value);
                        setState(() {
                          // currentText = value;
                        });
                      },
                      beforeTextPaste: (text) {
                        return true;
                      },
                      appContext: context,
                    ),
                  ),
                ),
          const SizedBox(
            height: 20,
          ),
          currentState == MobileVerificationState.Otp_SHOW_state
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      StringConstants.getText(
                          StringConstants.txtdidnotRecieveotp),
                      style: const TextStyle(
                        color: ColorConstants.textColor,
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(StringConstants.getText(
                            StringConstants.btnResendOtp)))
                  ],
                )
              : Row(
                  children: const [Text("")],
                ),
          currentState == MobileVerificationState.Otp_SHOW_state
              ? const SizedBox(
                  height: 20,
                )
              : const SizedBox(
                  height: 0,
                ),
          TextButton(
            style: TextButton.styleFrom(
              fixedSize: Size(width - 40, 50),
              backgroundColor: ColorConstants.buttonColor,
            ),
            onPressed: () {},
            child: Text(
              currentState == MobileVerificationState.Mobile_SHOW_state
                  ? StringConstants.getText(StringConstants.btnGetOtp)
                  : StringConstants.getText(StringConstants.btnVerifyOtp),
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
