import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:swiggy_ui_clone/main.dart';

class CustomInput extends ConsumerWidget {
  final String label;
  final String hint;
  final TextEditingController controller;
  final Function(String) onChanged;
  final String? Function(String?)? validator;
  final bool isAutoFocus;

  const CustomInput({
    super.key,
    required this.label,
    required this.hint,
    required this.controller,
    required this.onChanged,
    required this.validator,
    this.isAutoFocus = true,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      validator: validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      cursorColor: primaryColor,
      autofocus: isAutoFocus,
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: primaryColor),
        ),
        prefix: Text(hint),
        focusColor: primaryColor,
        label: Text(
          label.toUpperCase(),
        ),
        labelStyle: Theme.of(context).textTheme.labelLarge!.copyWith(
              color: Colors.grey.shade400,
            ),
      ),
    );
  }
}
