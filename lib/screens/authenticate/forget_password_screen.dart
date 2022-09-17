import 'package:flutter/material.dart';
import 'package:kidvanto_assignment/screens/authenticate/login_screen.dart';
import 'package:kidvanto_assignment/widgets/auth_icon.dart';
import 'package:kidvanto_assignment/widgets/auth_widget.dart';
import 'package:kidvanto_assignment/widgets/custom_material_button.dart';
import 'package:kidvanto_assignment/widgets/custom_text_field.dart';
import '../../widgets/auth_button.dart';
import '../../widgets/auth_text.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
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
          CustomTextFormField(
            controller: _password,
            iconData: Icons.lock,
            hint: 'Enter NewPassword*',
            obscure: true,
            textInputType: TextInputType.visiblePassword,
          ),
          const SizedBox(height: 12),
          AuthText(
            text: 'Resend OTP',
            function: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const LoginScreen(),
              ));
            },
          ),
          const SizedBox(height: 20),
          CustomMaterialButton(
            title: 'Reset Password',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
