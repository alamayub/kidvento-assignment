import 'package:flutter/material.dart';
import 'package:kidvanto_assignment/screens/authenticate/forget_password_screen.dart';
import 'package:kidvanto_assignment/widgets/auth_icon.dart';
import 'package:kidvanto_assignment/widgets/auth_widget.dart';
import 'package:kidvanto_assignment/widgets/custom_material_button.dart';
import 'package:kidvanto_assignment/widgets/custom_text_field.dart';

import '../../config/constants.dart';

class FindAccountScreen extends StatefulWidget {
  const FindAccountScreen({Key? key}) : super(key: key);

  @override
  State<FindAccountScreen> createState() => _FindAccountScreenState();
}

class _FindAccountScreenState extends State<FindAccountScreen> {
  late final TextEditingController _mobile;

  @override
  void initState() {
    _mobile = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _mobile.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AuthWidget(
      widget: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const AuthIcon(),
          Center(
            child: Text(
              'Enter your mobile number to\nReset Password',
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(color: FILLTED_COLOR),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 20),
          CustomTextFormField(
            controller: _mobile,
            iconData: Icons.phone,
            hint: 'Mobile Number*',
            textInputType: TextInputType.number,
          ),
          const SizedBox(height: 30),
          CustomMaterialButton(
            title: 'Generate OTP',
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const ForgetPasswordScreen(),
              ));
            },
          ),
        ],
      ),
    );
  }
}
