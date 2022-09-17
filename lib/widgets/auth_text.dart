import 'package:flutter/material.dart';

import '../config/constants.dart';

class AuthText extends StatelessWidget {
  final String text;
  final Function() function;
  const AuthText({
    Key? key,
    required this.text,
    required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Text(
        text,
        style: Theme.of(context)
            .textTheme
            .headline5!
            .copyWith(color: FILLTED_COLOR),
      ),
    );
  }
}
