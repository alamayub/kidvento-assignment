import 'package:flutter/material.dart';
import 'package:kidvanto_assignment/config/constants.dart';
import 'package:kidvanto_assignment/screens/authenticate/login_screen.dart';
import 'package:kidvanto_assignment/screens/authenticate/register_screen.dart';
import 'package:kidvanto_assignment/widgets/custom_material_button.dart';

class AuthButton extends StatelessWidget {
  final bool isLog;
  final bool isReg;
  const AuthButton({
    Key? key,
    required this.isLog,
    required this.isReg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      decoration: BoxDecoration(
        color: FILLTED_COLOR,
        borderRadius: BorderRadius.circular(BORDER_RADIUS),
      ),
      margin: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          CustomMaterialButton(
            title: 'Login',
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const LoginScreen(),
              ));
            },
            isActive: isLog,
          ),
          CustomMaterialButton(
            title: 'Sign Up',
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const RegisterScreen(),
              ));
            },
            isActive: isReg,
          ),
        ],
      ),
    );
  }
}
