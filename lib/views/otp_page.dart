import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:swiggy_ui_clone/views/home_page.dart';
import 'package:swiggy_ui_clone/views/login_page.dart';
import 'package:swiggy_ui_clone/widgets/custom_button.dart';

final otpProvider = StateProvider<String?>((ref) => null);

class OTPPage extends ConsumerWidget {
  const OTPPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          _buildHeader(context, ref),
          _buildOTPField(context),
        ],
      ),
    );
  }

  _buildHeader(BuildContext context, WidgetRef ref) {
    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;

    return Container(
      color: Colors.grey.shade100,
      width: currentWidth,
      height: currentHeight * 0.2,
      child: Stack(
        children: [
          Positioned(
            top: currentHeight * 0.05,
            left: currentWidth * 0.05,
            child: Text(
              "Verify Details".toUpperCase(),
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade700,
                  ),
            ),
          ),
          Positioned(
            top: currentHeight * 0.09,
            left: currentWidth * 0.05,
            child: Text(
              "OTP sent to +91 ${ref.watch(phoneProvider)}",
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade500,
                  ),
            ),
          ),
          Positioned(
            top: currentHeight * 0.08,
            right: currentWidth * 0.15,
            child: const Text("XXXXXX"),
          ),
          Positioned(
            top: currentHeight * 0,
            right: currentWidth * 0.005,
            child: Icon(
              Icons.phone_android_sharp,
              color: Colors.blue.withOpacity(0.3),
              size: currentHeight * 0.2,
            ),
          ),
        ],
      ),
    );
  }

  _buildOTPField(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;
    return Container(
      width: currentWidth,
      padding: EdgeInsets.symmetric(
        vertical: currentHeight * 0.03,
        horizontal: currentWidth * 0.05,
      ),
      child: Form(
          child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              OTPDigitField(),
              OTPDigitField(),
              OTPDigitField(),
              OTPDigitField(),
              OTPDigitField(),
              OTPDigitField(),
            ],
          ),
          SizedBox(height: currentHeight * 0.05),
          CustomButton(
            title: "Submit",
            isDisabled: false,
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                  (route) => false);
            },
          ),
        ],
      )),
    );
  }
}

class OTPDigitField extends ConsumerWidget {
  const OTPDigitField({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: 44,
      width: 40,
      child: TextFormField(
        onChanged: (value) {
          if (value.length == 1) {
            // ref.read(otpProvider.notifier).update((state) => state! + value);
            FocusScope.of(context).nextFocus();
          }
          if (value.isEmpty) {
            FocusScope.of(context).previousFocus();
          }
        },
        style: Theme.of(context).textTheme.headlineSmall,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
      ),
    );
  }
}
