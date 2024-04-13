import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:swiggy_ui_clone/main.dart';
import 'package:swiggy_ui_clone/views/food_page.dart';
import 'package:swiggy_ui_clone/widgets/category_card.dart';
import 'package:swiggy_ui_clone/widgets/home_search_bar.dart';
import 'package:swiggy_ui_clone/widgets/swiggy_logo.dart';

class InstamartPage extends ConsumerWidget {
  const InstamartPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildBody(context),
          ],
        ),
      ),
    );
  }

  _buildAppBar(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    return AppBar(
      toolbarHeight: 70,
      backgroundColor: Colors.pink.withOpacity(0.2),
      leading: null,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 50,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "9",
                          textAlign: TextAlign.center,
                          style:
                              Theme.of(context).textTheme.titleLarge!.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        Text(
                          "mins",
                          textAlign: TextAlign.center,
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Delivery to Percy Dale ....",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
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
      ),
    );
  }

  _buildBody(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;

    return Container(
      width: currentWidth,
      padding: EdgeInsets.symmetric(
        vertical: currentHeight * 0.03,
        horizontal: currentWidth * 0.05,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.pink.withOpacity(0.2),
            Colors.pink.withOpacity(0.01),
          ],
        ),
      ),
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
            height: currentHeight * 0.26,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                InstaCategoryCard(
                  title: "Cooking\nEssentials",
                  imageUrl:
                      "https://i.pinimg.com/736x/21/d7/c4/21d7c4670c07fa3a5e08e4524b93fe9b.jpg",
                ),
                InstaCategoryCard(
                  title: "Home\nCare",
                  imageUrl:
                      "https://i.pinimg.com/564x/c2/70/3e/c2703ed221de4616b81e56069b8c228d.jpg",
                ),
                InstaCategoryCard(
                  title: "Personal\nCare",
                  imageUrl:
                      "https://i.pinimg.com/564x/b7/f4/5d/b7f45d19d7c77f969846f30cb8d0ba13.jpg",
                ),
              ],
            ),
          ),

          SizedBox(
            height: currentHeight * 0.03,
          ),

          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              color: Colors.pink.shade100,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: currentWidth * 0.1,
                  child: const ImageNetwork(
                    scale: 30,
                    src:
                        "https://i.pinimg.com/564x/5c/06/a5/5c06a52db89fc8a296364fd2a4b9be2e.jpg",
                  ),
                ),
                SizedBox(
                  width: currentWidth * 0.03,
                ),
                Text(
                  "Free 10 kg sugar".toUpperCase(),
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Text(
                  " on all offers above ₹999".toUpperCase(),
                  style: Theme.of(context).textTheme.bodySmall,
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
              Container(
                width: currentWidth * 0.15,
                height: 2,
                color: Colors.pink.shade700,
              ),
              Text(
                "Best Prices Always".toUpperCase(),
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.pink.shade700,
                    ),
              ),
              Container(
                width: currentWidth * 0.15,
                height: 2,
                color: Colors.pink.shade700,
              ),
            ],
          ),

          SizedBox(
            height: currentHeight * 0.03,
          ),

          SizedBox(
            height: currentHeight * 0.2,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                //1

                Container(
                  margin: const EdgeInsets.only(right: 10),
                  width: currentWidth * 0.4,
                  height: 300,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.pink.shade700,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Text(
                        "25% off",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: Colors.white,
                            ),
                      ),
                      Text(
                        "Save ₹123",
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      const ImageNetwork(
                        scale: 6,
                        src:
                            "https://i.pinimg.com/564x/80/f7/98/80f798534119b7facb5b3549dfedb245.jpg",
                      ),
                    ],
                  ),
                ),

                //2

                Container(
                  margin: const EdgeInsets.only(right: 10),
                  width: currentWidth * 0.4,
                  height: 300,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.pink.shade700,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Text(
                        "25% off",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: Colors.white,
                            ),
                      ),
                      Text(
                        "Save ₹123",
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      const ImageNetwork(
                        scale: 6,
                        src:
                            "https://i.pinimg.com/564x/80/f7/98/80f798534119b7facb5b3549dfedb245.jpg",
                      ),
                    ],
                  ),
                ),

                //3

                Container(
                  margin: const EdgeInsets.only(right: 10),
                  width: currentWidth * 0.4,
                  height: 300,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.pink.shade700,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Text(
                        "25% off",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: Colors.white,
                            ),
                      ),
                      Text(
                        "Save ₹123",
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      const ImageNetwork(
                        scale: 6,
                        src:
                            "https://i.pinimg.com/564x/80/f7/98/80f798534119b7facb5b3549dfedb245.jpg",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Sale Live Now",
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Colors.pink.shade700,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Text(
                "Mega Savings Festival".toUpperCase(),
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.w900,
                      color: Colors.pink.shade700,
                    ),
              ),
              Container(
                alignment: Alignment.center,
                width: currentWidth * 0.29,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    width: 5,
                    color: Colors.pink.shade700,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  "one Exclusive",
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.pink.shade700,
                      ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class InstaCategoryCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  const InstaCategoryCard({
    super.key,
    required this.title,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 10),
          padding: const EdgeInsets.all(20),
          width: currentWidth * 0.4,
          height: currentHeight * 0.18,
          decoration: BoxDecoration(
            color: Colors.pink.shade100,
            borderRadius: BorderRadius.circular(10),
          ),
          child: ImageNetwork(
            scale: 1,
            src: imageUrl,
          ),
        ),
        SizedBox(
          height: currentHeight * 0.02,
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontWeight: FontWeight.bold,
              ),
        )
      ],
    );
  }
}
