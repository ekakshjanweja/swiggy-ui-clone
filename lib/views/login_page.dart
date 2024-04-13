import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:swiggy_ui_clone/views/otp_page.dart';
import 'package:swiggy_ui_clone/widgets/custom_button.dart';
import 'package:swiggy_ui_clone/widgets/custom_input.dart';
import 'package:swiggy_ui_clone/widgets/swiggy_logo.dart';
import 'package:swiggy_ui_clone/widgets/tnc.dart';

final phoneProvider = StateProvider<String?>((ref) => null);

class LogInPage extends ConsumerWidget {
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
      ),
      body: Column(
        children: [
          _buildHeader(context),
          _buildBottom(context, ref),
          Text(
            "App Version 5.0.4 (7)",
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Colors.grey,
                ),
          ),
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
      height: currentHeight * 0.3,
      child: Stack(
        children: [
          Positioned(
            top: currentHeight * 0.05,
            left: currentWidth * 0.05,
            child: Text(
              "LIVE\nFOR\nFOOD",
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                    fontWeight: FontWeight.w900,
                    color: Colors.grey.shade300,
                    letterSpacing: 5,
                  ),
            ),
          ),
          Positioned(
            top: currentHeight * 0.08,
            left: currentWidth * 0.35,
            child: Transform.rotate(
              angle: 20 * pi / 180,
              child: const ImageNetwork(
                scale: 4,
                src:
                    "https://i.pinimg.com/564x/b3/8a/a1/b38aa1b21050b0e769a97eb751d12829.jpg",
              ),
            ),
          ),
        ],
      ),
    );
  }

  _buildBottom(BuildContext context, WidgetRef ref) {
    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;

    return Container(
      width: currentWidth,
      height: currentHeight * 0.52,
      padding: EdgeInsets.symmetric(
        vertical: currentHeight * 0.03,
        horizontal: currentWidth * 0.05,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Account".toUpperCase(),
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          SizedBox(height: currentHeight * 0.005),
          Text(
            "Login/Create Account to manage orders",
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: Colors.grey.shade500),
          ),
          SizedBox(height: currentHeight * 0.02),
          CustomButton(
            title: "Login",
            isDisabled: false,
            onPressed: () {
              _showLoginModal(context, ref);
            },
          ),
          SizedBox(height: currentHeight * 0.02),
          Text.rich(
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
          ),
          SizedBox(height: currentHeight * 0.02),
          const Divider(
            color: Colors.black,
            thickness: 1,
          ),
          SizedBox(height: currentHeight * 0.02),
          ListTile(
            leading: Icon(
              Icons.percent_sharp,
              color: Colors.grey.shade700,
            ),
            title: Text(
              "Offers",
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Colors.grey.shade700,
                  ),
            ),
            trailing: Icon(
              Icons.arrow_right,
              color: Colors.grey.shade700,
            ),
          ),
          SizedBox(height: currentHeight * 0.02),
          Row(
            children: List.generate(
                400 ~/ 10,
                (index) => Expanded(
                      child: Container(
                        color: index % 2 == 0
                            ? Colors.transparent
                            : Colors.grey.shade400,
                        height: 2,
                      ),
                    )),
          ),
          SizedBox(height: currentHeight * 0.02),
          ListTile(
            leading: Icon(
              Icons.email_outlined,
              color: Colors.grey.shade700,
            ),
            title: Text(
              "Send Feedback",
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Colors.grey.shade700,
                  ),
            ),
            trailing: Icon(
              Icons.arrow_right,
              color: Colors.grey.shade700,
            ),
          ),
        ],
      ),
    );
  }

  _showLoginModal(BuildContext context, WidgetRef ref) {
    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;

    TextEditingController phoneController =
        TextEditingController(text: ref.watch(phoneProvider));

    return showModalBottomSheet(
      enableDrag: true,
      isScrollControlled: true,
      showDragHandle: true,
      context: context,
      builder: (context) {
        return Container(
          width: currentWidth,
          height: currentHeight * 0.7,
          padding: EdgeInsets.symmetric(
            vertical: currentHeight * 0.03,
            horizontal: currentWidth * 0.05,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Continue",
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              SizedBox(height: currentHeight * 0.005),
              Text(
                "Enter your phone number to proceed",
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Colors.grey.shade500),
              ),
              SizedBox(height: currentHeight * 0.02),
              CustomInput(
                label: "Phone Number",
                hint: "+91 ",
                controller: phoneController,
                onChanged: (String value) =>
                    ref.watch(phoneProvider.notifier).update((state) => value),
                validator: (value) {
                  if (value!.length < 10) {
                    return "Minimum 10 digits required";
                  }
                  if (value.length > 10) {
                    return "Maximum 10 digits required";
                  }

                  return null;
                },
              ),
              SizedBox(height: currentHeight * 0.02),
              CustomButton(
                isDisabled: ref.watch(phoneProvider) == null,
                onPressed: () {
                  if (ref.watch(phoneProvider) != null) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const OTPPage(),
                      ),
                    );
                  }
                },
                title: "Continue",
              ),
              SizedBox(height: currentHeight * 0.02),
              const TNC(),
              SizedBox(height: currentHeight * 0.02),
            ],
          ),
        );
      },
    );
  }
}
