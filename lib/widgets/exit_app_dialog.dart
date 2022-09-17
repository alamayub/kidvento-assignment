import 'package:flutter/material.dart';

Future<bool> exitAppDialog(BuildContext context) {
  return showDialog<bool>(
    context: context,
    builder: (context) {
      return AlertDialog(
        content: const Text('Are you sure, you want to exit the app?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text('Yes, Exit'),
          )
        ],
      );
    },
  ).then((value) => value ?? false);
}
