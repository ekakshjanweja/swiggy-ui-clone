import 'package:flutter/material.dart';
import 'package:swiggy_ui_clone/main.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({
    super.key,
    required this.currentWidth,
    required this.currentHeight,
  });

  final double currentWidth;
  final double currentHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: currentWidth,
      height: currentHeight * 0.06,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Search for 'Pizza'",
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Colors.grey.shade500,
                ),
          ),
          const Row(
            children: [
              Icon(Icons.search),
              SizedBox(width: 4),
              VerticalDivider(),
              SizedBox(width: 4),
              Icon(Icons.mic, color: primaryColor),
            ],
          )
        ],
      ),
    );
  }
}
