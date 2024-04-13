import 'dart:math';

import 'package:flutter/material.dart';
import 'package:swiggy_ui_clone/main.dart';
import 'package:swiggy_ui_clone/widgets/category_card.dart';
import 'package:swiggy_ui_clone/widgets/home_search_bar.dart';
import 'package:swiggy_ui_clone/widgets/swiggy_logo.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: _buildBody(context),
    );
  }

  _buildAppBar(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    return AppBar(
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
      color: Colors.grey.shade100,
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

          _buildBottomSection(context),
        ],
      ),
    );
  }

  _buildHeader(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;

    return Container(
      color: Colors.grey.shade100,
      width: currentWidth,
      height: currentHeight * 0.11,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Insanely Good".toUpperCase(),
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Text(
                "Freshly handmade paneer,\nstoneground batter & more!",
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: Colors.grey.shade500),
              ),
              Container(
                alignment: Alignment.center,
                width: currentWidth * 0.25,
                margin: const EdgeInsets.only(top: 5),
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: const Color(0xffff0033),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  "Shop Now",
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
              "https://i.pinimg.com/736x/ac/f2/8d/acf28d9f31f0ff1c012ed8b6d865a862.jpg",
              fit: BoxFit.fitWidth,
            ),
          )
        ],
      ),
    );
  }

  _buildBottomSection(BuildContext context) {
    final currentHeight = MediaQuery.of(context).size.height;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            CategoryCard(
              title: "Food Delivery",
              isOne: true,
              currentHeight: currentHeight * 0.25,
              image: SizedBox(
                width: currentHeight * 0.13,
                height: currentHeight * 0.13,
                child: const ImageNetwork(
                  scale: 1,
                  src:
                      "https://i.pinimg.com/736x/cc/b9/92/ccb9929071077b16096c3f71d036c875.jpg",
                ),
              ),
            ),
            SizedBox(
              height: currentHeight * 0.03,
            ),
            CategoryCard(
              title: "Dineout",
              isOne: true,
              currentHeight: currentHeight * 0.21,
              image: SizedBox(
                width: currentHeight * 0.11,
                height: currentHeight * 0.11,
                child: const ImageNetwork(
                  scale: 10,
                  src:
                      "https://i.pinimg.com/736x/f3/54/da/f354da0dff20388a4de8ad0100d6f1a7.jpg",
                ),
              ),
            ),
          ],
        ),
        Column(
          children: [
            CategoryCard(
              title: "Instamart",
              isOne: true,
              currentHeight: currentHeight * 0.15,
              image: SizedBox(
                width: currentHeight * 0.07,
                height: currentHeight * 0.07,
                child: const ImageNetwork(
                  scale: 10,
                  src:
                      "https://i.pinimg.com/736x/81/d4/61/81d4619826b40936ada5d7322f1f1a66.jpg",
                ),
              ),
            ),
            SizedBox(
              height: currentHeight * 0.03,
            ),
            CategoryCard(
              title: "Genie",
              isOne: false,
              currentHeight: currentHeight * 0.08,
              image: SizedBox(
                width: currentHeight * 0.053,
                height: currentHeight * 0.053,
                child: const ImageNetwork(
                  scale: 10,
                  src:
                      "https://i.pinimg.com/564x/87/7e/26/877e26fe3aee0e52170b5a7ebdf07946.jpg",
                ),
              ),
            ),
            SizedBox(
              height: currentHeight * 0.03,
            ),
            CategoryCard(
              title: "Minis",
              isOne: false,
              currentHeight: currentHeight * 0.08,
              image: SizedBox(
                width: currentHeight * 0.053,
                height: currentHeight * 0.053,
                child: const ImageNetwork(
                  scale: 10,
                  src:
                      "https://i.pinimg.com/564x/fc/16/5b/fc165b4f51ab714f7ca7ba14d280c8e3.jpg",
                ),
              ),
            ),
            SizedBox(
              height: currentHeight * 0.03,
            ),
            CategoryCard(
              title: "Insanely Good",
              isOne: false,
              currentHeight: currentHeight * 0.08,
              image: SizedBox(
                width: currentHeight * 0.04,
                height: currentHeight * 0.04,
                child: const ImageNetwork(
                  scale: 10,
                  src:
                      "https://i.pinimg.com/564x/c2/54/1d/c2541daab3b3d172c0cea247eb6f8c9f.jpg",
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
