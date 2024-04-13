import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:swiggy_ui_clone/main.dart';
import 'package:swiggy_ui_clone/widgets/category_card.dart';
import 'package:swiggy_ui_clone/widgets/home_search_bar.dart';
import 'package:swiggy_ui_clone/widgets/swiggy_logo.dart';

class FoodPage extends ConsumerWidget {
  const FoodPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildBody(context),
            _buildBody(context),
          ],
        ),
      ),
    );
  }

  _buildAppBar(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    return AppBar(
      backgroundColor: primaryColor.withOpacity(0.2),
      leading: null,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Transform.rotate(
                    angle: 45 * pi / 180,
                    child: const Icon(
                      Icons.navigation,
                      color: primaryColor,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Home",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const Icon(Icons.keyboard_arrow_down_rounded)
                ],
              ),
              SizedBox(
                width: currentWidth * 0.5,
                child: Text(
                  "925 Percy Dale, Ashlynberg, UT 57901-2930",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.normal,
                        color: Colors.grey.shade500,
                      ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              FilledButton.tonal(
                style: ButtonStyle(
                  backgroundColor: const MaterialStatePropertyAll<Color>(
                    primaryColor,
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(1000000),
                    ),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "ONE",
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey.shade800,
                  borderRadius: BorderRadius.circular(10000),
                ),
                child: const Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  _buildBody(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;

    return Container(
      width: currentWidth,
      height: currentHeight,
      padding: EdgeInsets.symmetric(
        vertical: currentHeight * 0.03,
        horizontal: currentWidth * 0.05,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            primaryColor.withOpacity(0.2),
            primaryColor.withOpacity(0.01)
          ],
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            //Search Bar

            HomeSearchBar(
              currentWidth: currentWidth,
              currentHeight: currentHeight,
            ),

            //Bottom Section

            SizedBox(
              height: currentHeight * 0.03,
            ),

            _buildHeader(context),

            SizedBox(
              height: currentHeight * 0.03,
            ),

            SizedBox(
              height: currentHeight * 0.2,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    padding: const EdgeInsets.all(20),
                    width: currentWidth * 0.85,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Chicken Wing Deal at ₹329".toUpperCase(),
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(
                                    fontWeight: FontWeight.w900,
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                  ),
                            ),
                            Text(
                              "11 pcs boneless wings; save flat 25% \nexclusively on Swiggy.",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: currentWidth * 0.25,
                              margin: const EdgeInsets.only(top: 5),
                              padding: const EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.secondary,
                                borderRadius: BorderRadius.circular(1000),
                              ),
                              child: Text(
                                "ORDER NOW",
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge!
                                    .copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: SizedBox(
                            width: 80,
                            height: 100,
                            child: Image.network(
                              scale: 1,
                              "https://i.pinimg.com/736x/36/b4/6b/36b46b9907b29785ce5ac6169b835bda.jpg",
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    padding: const EdgeInsets.all(20),
                    width: currentWidth * 0.85,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Chicken Wing Deal at ₹329".toUpperCase(),
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(
                                    fontWeight: FontWeight.w900,
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                  ),
                            ),
                            Text(
                              "11 pcs boneless wings; save flat 25% \nexclusively on Swiggy.",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: currentWidth * 0.25,
                              margin: const EdgeInsets.only(top: 5),
                              padding: const EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.secondary,
                                borderRadius: BorderRadius.circular(1000),
                              ),
                              child: Text(
                                "ORDER NOW",
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge!
                                    .copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: SizedBox(
                            width: 80,
                            height: 100,
                            child: Image.network(
                              scale: 1,
                              "https://i.pinimg.com/736x/36/b4/6b/36b46b9907b29785ce5ac6169b835bda.jpg",
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    padding: const EdgeInsets.all(20),
                    width: currentWidth * 0.85,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Chicken Wing Deal at ₹329".toUpperCase(),
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(
                                    fontWeight: FontWeight.w900,
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                  ),
                            ),
                            Text(
                              "11 pcs boneless wings; save flat 25% \nexclusively on Swiggy.",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: currentWidth * 0.25,
                              margin: const EdgeInsets.only(top: 5),
                              padding: const EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.secondary,
                                borderRadius: BorderRadius.circular(1000),
                              ),
                              child: Text(
                                "ORDER NOW",
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge!
                                    .copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: SizedBox(
                            width: 80,
                            height: 100,
                            child: Image.network(
                              scale: 1,
                              "https://i.pinimg.com/736x/36/b4/6b/36b46b9907b29785ce5ac6169b835bda.jpg",
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: currentHeight * 0.03,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CategoryCard(
                  title: "GuiltFree\nOptions",
                  isOne: false,
                  subtitle: "",
                  currentHeight: currentHeight * 0.1,
                  image: const ImageNetwork(
                    scale: 12,
                    src:
                        "https://i.pinimg.com/736x/16/e2/9b/16e29b6bc926727c49956cb32f27188d.jpg",
                  ),
                ),
                CategoryCard(
                  title: "Gourmet\nDelight",
                  isOne: false,
                  subtitle: "",
                  currentHeight: currentHeight * 0.1,
                  image: const ImageNetwork(
                    scale: 12,
                    src:
                        "https://i.pinimg.com/736x/3d/d0/a8/3dd0a871d4ba3707bc3ef064d3d06096.jpg",
                  ),
                ),
              ],
            ),

            SizedBox(
              height: currentHeight * 0.03,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Offers for you".toUpperCase(),
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Container(
                  width: currentWidth * 0.55,
                  height: 1,
                  color: Colors.grey.shade500,
                ),
              ],
            ),

            SizedBox(
              height: currentHeight * 0.03,
            ),

            SizedBox(
              height: currentHeight * 0.1,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  OfferCard(
                    title: "Pocket Hero",
                    subtitle: "Up to 60% off",
                    isOne: false,
                    currentHeight: currentHeight * 0.1,
                    image: const ImageNetwork(
                      scale: 12,
                      src:
                          "https://i.pinimg.com/736x/77/d0/46/77d046216aed031dae02543b9ee2ac79.jpg",
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  MoneyCard(
                    title: "More Offers",
                    isOne: false,
                    currentHeight: currentHeight * 0.1,
                    image: const ImageNetwork(
                      scale: 15,
                      src:
                          "https://i.pinimg.com/736x/1d/6c/08/1d6c08b0f7764714ed7de334ebfab446.jpg",
                    ),
                    subtitle: "Buy 1 get 1\nand more.",
                  )
                ],
              ),
            ),

            SizedBox(
              height: currentHeight * 0.03,
            ),
          ],
        ),
      ),
    );
  }

  _buildHeader(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;

    return Container(
      color: Colors.transparent,
      width: currentWidth,
      height: currentHeight * 0.11,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Food Fiesta".toUpperCase(),
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.w900,
                      color: primaryColor,
                    ),
              ),
              Text(
                "2 Offers in 1 order",
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Colors.grey.shade800,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Container(
                alignment: Alignment.center,
                width: currentWidth * 0.25,
                margin: const EdgeInsets.only(top: 5),
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  "one Exclusive",
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                ),
              ),
            ],
          ),
          SizedBox(
            width: currentWidth * 0.4,
            height: currentHeight * 0.5,
            child: Image.network(
              scale: 1,
              "https://i.pinimg.com/564x/93/3d/cd/933dcd85b6c80301537917aa2f0758f6.jpg",
              fit: BoxFit.fitWidth,
            ),
          )
        ],
      ),
    );
  }
}

class OfferCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool isOne;
  final double currentHeight;
  final Widget image;

  const OfferCard({
    super.key,
    required this.title,
    required this.isOne,
    required this.currentHeight,
    required this.image,
    required this.subtitle,
  });
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.all(currentWidth * 0.03),
      width: currentWidth * 0.42,
      height: currentHeight,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.deepPurple.shade100,
            Colors.deepPurpleAccent.shade100,
          ],
        ),
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
            right: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  title.toUpperCase(),
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                      ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
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
                      subtitle,
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            color: Colors.deepPurple.shade400,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            top: 10,
            left: 0,
            child: image,
          )
        ],
      ),
    );
  }
}

class MoneyCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool isOne;
  final double currentHeight;
  final Widget image;

  const MoneyCard({
    super.key,
    required this.title,
    required this.isOne,
    required this.currentHeight,
    required this.image,
    required this.subtitle,
  });
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.all(currentWidth * 0.03),
      width: currentWidth * 0.42,
      height: currentHeight,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.green.shade100,
            Colors.green.shade100,
          ],
        ),
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
            right: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  title.toUpperCase(),
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
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
                      subtitle,
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            color: Colors.green.shade400,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            top: 20,
            left: 0,
            child: image,
          )
        ],
      ),
    );
  }
}
