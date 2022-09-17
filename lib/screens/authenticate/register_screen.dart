import 'package:flutter/material.dart';
import 'package:kidvanto_assignment/screens/authenticate/verify_otp_screen.dart';
import 'package:kidvanto_assignment/widgets/auth_button.dart';
import 'package:kidvanto_assignment/widgets/auth_icon.dart';
import 'package:kidvanto_assignment/widgets/auth_widget.dart';
import 'package:kidvanto_assignment/widgets/custom_material_button.dart';
import 'package:kidvanto_assignment/widgets/custom_text_field.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  late final TextEditingController _name;
  late final TextEditingController _mobile;
  late final TextEditingController _email;
  late final TextEditingController _password;

  @override
  void initState() {
    _name = TextEditingController();
    _mobile = TextEditingController();
    _email = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _name.dispose();
    _email.dispose();
    _mobile.dispose();
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
          const AuthButton(isLog: false, isReg: true),
          CustomTextFormField(
            controller: _name,
            iconData: Icons.person,
            hint: 'Student Name*',
            textInputType: TextInputType.text,
            textCapitalize: true,
          ),
          const SizedBox(height: 12),
          CustomTextFormField(
            controller: _mobile,
            iconData: Icons.phone,
            hint: 'Mobile Number*',
            textInputType: TextInputType.number,
          ),
          const SizedBox(height: 12),
          CustomTextFormField(
            controller: _email,
            iconData: Icons.email,
            hint: 'Email ID*',
            textInputType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 12),
          CustomTextFormField(
            controller: _password,
            iconData: Icons.lock,
            hint: 'Password*',
            obscure: true,
            textInputType: TextInputType.visiblePassword,
          ),
          const SizedBox(height: 20),
          CustomMaterialButton(
            title: 'Generate OTP',
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const VerifyOtpScreen(),
              ));
            },
          ),
        ],
      ),
    );
  }
}
