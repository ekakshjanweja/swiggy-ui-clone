import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:swiggy_ui_clone/main.dart';

class CustomButton extends ConsumerWidget {
  final String title;
  final bool isDisabled;
  final Function() onPressed;

  const CustomButton({
    super.key,
    required this.title,
    required this.isDisabled,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;

    return SizedBox(
      width: currentWidth,
      height: currentHeight * 0.07,
      child: FilledButton(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(
            primaryColor.withOpacity(isDisabled ? 0.5 : 1.0),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          title.toUpperCase(),
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}
