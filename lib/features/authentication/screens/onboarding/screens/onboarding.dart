import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopease/features/authentication/controllers/onboarding_controller.dart';
import 'package:shopease/features/authentication/screens/onboarding/widgets/dot_indicators.dart';
import 'package:shopease/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:shopease/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:shopease/features/authentication/screens/onboarding/widgets/skip_button.dart';
import 'package:shopease/utils/constants/image_strings.dart';
import 'package:shopease/utils/constants/text_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});

  final OnBoardingController onBoardingController =
      Get.put(OnBoardingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: onBoardingController.pageController,
            onPageChanged: (value) => onBoardingController.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subtitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subtitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subtitle: TTexts.onBoardingSubTitle3,
              )
            ],
          ),
          const SkipButton(),
          const DotIndicators(),
          const OnboardingNextButton(),
        ],
      ),
    );
  }
}
