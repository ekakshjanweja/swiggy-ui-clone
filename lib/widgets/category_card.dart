import 'package:flutter/material.dart';
import 'package:swiggy_ui_clone/main.dart';

class CategoryCard extends StatelessWidget {
  final String title;
  final String? subtitle;
  final bool isOne;
  final double currentHeight;
  final Widget image;

  const CategoryCard({
    super.key,
    required this.title,
    required this.isOne,
    required this.currentHeight,
    required this.image,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.all(currentWidth * 0.03),
      width: currentWidth * 0.42,
      height: currentHeight,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 10.0,
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title.toUpperCase(),
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    isOne
                        ? Text(
                            "one",
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge!
                                .copyWith(
                                  color: primaryColor,
                                  fontWeight: FontWeight.bold,
                                ),
                          )
                        : const SizedBox(),
                    const SizedBox(width: 5),
                    Text(
                      subtitle ?? "Food Fiesta",
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            color: Colors.grey.shade400,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: image,
          )
        ],
      ),
    );
  }
}
