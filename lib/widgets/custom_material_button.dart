import 'package:flutter/material.dart';
import 'package:kidvanto_assignment/config/constants.dart';

class CustomMaterialButton extends StatelessWidget {
  final String title;
  final Function() onPressed;
  final bool isActive;
  const CustomMaterialButton({
    Key? key,
    required this.title,
    required this.onPressed,
    this.isActive = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      focusElevation: 0,
      hoverElevation: 0,
      highlightElevation: 0,
      minWidth: 100,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(BORDER_RADIUS),
      ),
      color:
          isActive ? Theme.of(context).colorScheme.primary : Colors.transparent,
      onPressed: onPressed,
      child: Text(
        title,
        style: Theme.of(context).textTheme.headline4!.copyWith(
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
      ),
    );
  }
}
