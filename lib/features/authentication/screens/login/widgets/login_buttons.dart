import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shopease/utils/constants/colors.dart';
import 'package:shopease/utils/constants/text_strings.dart';

class LoginButtons extends StatelessWidget {
  const LoginButtons({
    super.key,
    required this.isDark,
  });

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: isDark ? TColors.darkGrey : TColors.grey,
            endIndent: 5,
            thickness: 0.5,
            indent: 60,
          ),
        ),
        Text(
          TTexts.orSignInWith,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
          child: Divider(
            thickness: 0.5,
            color: isDark ? TColors.darkGrey : TColors.grey,
            endIndent: 60,
            indent: 5,
          ),
        )

        // Flexible(child: D)
      ],
    );
  }
}
