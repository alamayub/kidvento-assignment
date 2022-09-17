import 'package:flutter/material.dart';
import 'package:kidvanto_assignment/config/constants.dart';
import 'package:kidvanto_assignment/screens/authenticate/login_screen.dart';
import 'package:kidvanto_assignment/widgets/auth_icon.dart';
import 'package:kidvanto_assignment/widgets/auth_widget.dart';
import 'package:kidvanto_assignment/widgets/custom_material_button.dart';
import 'package:kidvanto_assignment/widgets/custom_text_field.dart';
import '../../widgets/auth_button.dart';
import '../../widgets/auth_text.dart';

class VerifyOtpScreen extends StatefulWidget {
  const VerifyOtpScreen({Key? key}) : super(key: key);

  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {
  late final TextEditingController _otp;
  late final TextEditingController _password;

  @override
  void initState() {
    _otp = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _otp.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AuthWidget(
      widget: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const AuthIcon(),
          const AuthButton(isLog: true, isReg: false),
          CustomTextFormField(
            controller: _otp,
            iconData: Icons.key,
            hint: 'Enter OTP',
            textInputType: TextInputType.number,
          ),
          const SizedBox(height: 12),
          AuthText(
            text: 'Resend OTP',
            function: () {},
          ),
          const SizedBox(height: 20),
          CustomMaterialButton(
            title: 'Sign Up',
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const LoginScreen(),
              ));
            },
          ),
          const SizedBox(height: 30),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: 'By pressing the sign up button you agree\nto our',
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(color: FILLTED_COLOR),
              children: <TextSpan>[
                TextSpan(
                  text: ' Terms and Conditions',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
