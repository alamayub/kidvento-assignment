import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kidvanto_assignment/config/constants.dart';

class CustomTextFormField extends StatefulWidget {
  final TextEditingController controller;
  final IconData iconData;
  final String hint;
  final bool obscure;
  final TextInputType textInputType;
  final bool textCapitalize;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;
  final bool enabled;

  const CustomTextFormField({
    Key? key,
    required this.controller,
    required this.iconData,
    required this.hint,
    required this.textInputType,
    this.obscure = false,
    this.textCapitalize = false,
    this.inputFormatters,
    this.validator,
    this.enabled = true,
  }) : super(key: key);

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool visible = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.obscure == true ? visible : false,
      controller: widget.controller,
      textCapitalization: widget.textCapitalize == true
          ? TextCapitalization.words
          : TextCapitalization.none,
      keyboardType: widget.textInputType,
      inputFormatters: widget.inputFormatters,
      validator: widget.validator,
      maxLength: widget.textInputType == TextInputType.number ? 10 : 100,
      decoration: InputDecoration(
        filled: true,
        fillColor: FILLTED_COLOR,
        enabled: widget.enabled,
        counterText: '',
        prefixIcon: Icon(
          widget.iconData,
          size: 20,
        ),
        suffixIcon: widget.obscure == true
            ? GestureDetector(
                onTap: () {
                  setState(() => visible = !visible);
                },
                child: Icon(
                  visible == true ? Icons.visibility_off : Icons.visibility,
                  size: 18,
                  color: Colors.blueGrey.shade500,
                ),
              )
            : null,
        hintText: widget.hint,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 16,
        ),
        border: outlineInputBorder(),
        enabledBorder: outlineInputBorder(),
        focusedBorder: outlineInputBorder(),
        focusedErrorBorder: outlineInputBorder(),
        disabledBorder: outlineInputBorder(),
        errorBorder: outlineInputBorder(),
      ),
    );
  }
}

outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(BORDER_RADIUS),
    borderSide: const BorderSide(color: Colors.transparent),
  );
}
