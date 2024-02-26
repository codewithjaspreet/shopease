import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shopease/features/authentication/controllers/onboarding_controller.dart';
import 'package:shopease/utils/constants/colors.dart';
import 'package:shopease/utils/constants/sizes.dart';
import 'package:shopease/utils/device/device_utility.dart';
import 'package:shopease/utils/helpers/helper_functions.dart';

class OnboardingNextButton extends StatelessWidget {
  const OnboardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      right: TSizes.defaultSpace,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: isDark ? TColors.primary : Colors.black),
        onPressed: () {
          OnBoardingController.instance.nextPage();
        },
        child: GestureDetector(
          child: const Icon(
            Icons.arrow_forward_ios, color: Colors.white,
            // color: Colors.white,
          ),
        ),
      ),
    );
  }
}
