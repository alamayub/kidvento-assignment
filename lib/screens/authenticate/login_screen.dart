import 'package:flutter/material.dart';
import 'package:kidvanto_assignment/screens/authenticate/find_account_screen.dart';
import 'package:kidvanto_assignment/screens/home/kidvanto.dart';
import 'package:kidvanto_assignment/widgets/auth_button.dart';
import 'package:kidvanto_assignment/widgets/auth_icon.dart';
import 'package:kidvanto_assignment/widgets/auth_text.dart';
import 'package:kidvanto_assignment/widgets/auth_widget.dart';
import 'package:kidvanto_assignment/widgets/custom_material_button.dart';
import 'package:kidvanto_assignment/widgets/custom_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late final TextEditingController _email;
  late final TextEditingController _password;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
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
            controller: _email,
            iconData: Icons.email,
            hint: 'Email ID / Mobile Number',
            textInputType: TextInputType.text,
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
            title: 'Login',
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const Kidvento(),
              ));
            },
          ),
          const SizedBox(height: 12),
          AuthText(
            text: 'Forget Password?',
            function: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const FindAccountScreen(),
              ));
            },
          ),
        ],
      ),
    );
  }
}
