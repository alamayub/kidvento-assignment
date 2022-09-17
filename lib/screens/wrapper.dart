import 'package:flutter/material.dart';
import 'package:kidvanto_assignment/screens/authenticate/login_screen.dart';

import '../widgets/exit_app_dialog.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final res = await exitAppDialog(context);
        if (res == true) {
          return true;
        } else {
          return false;
        }
      },
      child: const LoginScreen(),
    );
  }
}
