import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopease/common/styles/spacing_styles.dart';
import 'package:shopease/common/widgets/divider_component.dart';
import 'package:shopease/features/authentication/screens/login/widgets/login_form.dart';
import 'package:shopease/features/authentication/screens/login/widgets/login_header.dart';
import 'package:shopease/common/widgets/social_buttons.dart';
import 'package:shopease/utils/constants/colors.dart';
import 'package:shopease/utils/constants/image_strings.dart';
import 'package:shopease/utils/constants/sizes.dart';
import 'package:shopease/utils/constants/text_strings.dart';
import 'package:shopease/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: AppSpacingStyle.paddingWithAppBarHeight,
            child: Column(
              children: [
                LoginHeader(isDark: isDark),
                const LoginForm(),
                const DividerComponent(
                  dividerText: TTexts.orSignInWith,
                ),
                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),
                const SocialButtons()
              ],
            )),
      ),
    );
  }
}
