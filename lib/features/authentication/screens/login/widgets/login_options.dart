import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shopease/utils/constants/colors.dart';
import 'package:shopease/utils/constants/image_strings.dart';
import 'package:shopease/utils/constants/sizes.dart';

class LoginOptions extends StatelessWidget {
  const LoginOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: TColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            icon: const Image(
              image: AssetImage(TImages.google),
              width: TSizes.iconMd,
              height: TSizes.iconMd,
            ),
            onPressed: () {},
          ),
        ),
        const SizedBox(
          width: TSizes.spaceBtwItems,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: TColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            icon: const Image(
              image: AssetImage(TImages.facebook),
              width: TSizes.iconMd,
              height: TSizes.iconMd,
            ),
            onPressed: () {},
          ),
        )
      ],
    );
  }
}
