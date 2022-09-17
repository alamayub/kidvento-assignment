import 'package:flutter/material.dart';

class AuthIcon extends StatelessWidget {
  const AuthIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 60, bottom: 30),
      height: 100,
      decoration: const BoxDecoration(
        color: Colors.transparent,
        image: DecorationImage(
          image: AssetImage('images/icon.png'),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
