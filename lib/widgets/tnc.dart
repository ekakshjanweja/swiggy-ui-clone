import 'package:flutter/material.dart';

class TNC extends StatelessWidget {
  const TNC({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "By clicking, I accept the ",
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: Colors.grey.shade500,
            ),
        children: <TextSpan>[
          TextSpan(
            text: "Terms",
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Colors.grey.shade900,
                  fontWeight: FontWeight.bold,
                ),
          ),
          TextSpan(
            text: " &",
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Colors.grey.shade500,
                ),
          ),
          TextSpan(
            text: " Conditions",
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Colors.grey.shade900,
                  fontWeight: FontWeight.bold,
                ),
          ),
          TextSpan(
            text: " &",
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Colors.grey.shade500,
                ),
          ),
          TextSpan(
            text: " Privacy Policy",
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Colors.grey.shade900,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ],
      ),
    );
  }
}
