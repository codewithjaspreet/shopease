import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopease/common/widgets/divider_component.dart';
import 'package:shopease/common/widgets/social_buttons.dart';
import 'package:shopease/utils/constants/colors.dart';
import 'package:shopease/utils/constants/sizes.dart';
import 'package:shopease/utils/constants/text_strings.dart';
import 'package:shopease/utils/helpers/helper_functions.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);

    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: TTexts.firstName,
                      prefixIcon: Icon(Iconsax.user)),
                ),
              ),
              const SizedBox(width: TSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: TTexts.lastName,
                      prefixIcon: Icon(Iconsax.user)),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),
          TextFormField(
            decoration: const InputDecoration(
                labelText: TTexts.username,
                prefixIcon: Icon(Iconsax.user_edit)),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),
          TextFormField(
            decoration: const InputDecoration(
                labelText: TTexts.email, prefixIcon: Icon(Iconsax.calendar)),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),
          TextFormField(
            decoration: const InputDecoration(
                labelText: TTexts.lastName, prefixIcon: Icon(Iconsax.mobile)),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),
          TextFormField(
            decoration: const InputDecoration(
                suffixIcon: Icon(Iconsax.eye_slash),
                labelText: TTexts.password,
                prefixIcon: Icon(Iconsax.password_check)),
          ),
          const SizedBox(
            height: TSizes.spaceBtwSections,
          ),
          Row(
            children: [
              SizedBox(
                width: 24,
                height: 24,
                child: Checkbox(
                  onChanged: (value) => {},
                  value: true,
                ),
              ),
              const SizedBox(
                width: TSizes.spaceBtwItems,
              ),
              Text.rich(TextSpan(children: [
                TextSpan(
                    text: '${TTexts.iAgreeTo} ',
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: '${TTexts.privacyPolicy} ',
                    style: Theme.of(context).textTheme.bodyMedium!.apply(
                        decorationColor:
                            isDark ? TColors.white : TColors.primary,
                        color: isDark ? TColors.white : TColors.primary,
                        decoration: TextDecoration.underline)),
                TextSpan(
                    text: '${TTexts.and} ',
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: '${TTexts.termsOfUse} ',
                    style: Theme.of(context).textTheme.bodyMedium!.apply(
                        decorationColor:
                            isDark ? TColors.white : TColors.primary,
                        color: isDark ? TColors.white : TColors.primary,
                        decoration: TextDecoration.underline)),
              ]))
            ],
          ),
          const SizedBox(
            height: TSizes.spaceBtwSections,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  TTexts.createAccount,
                  style: Theme.of(context).textTheme.headlineSmall,
                )),
          ),
          const SizedBox(
            height: TSizes.spaceBtwSections,
          ),
          DividerComponent(dividerText: TTexts.orSignUpWith.capitalize!),
          const SizedBox(
            height: TSizes.spaceBtwSections,
          ),
          const SocialButtons(),
        ],
      ),
    );
  }
}
