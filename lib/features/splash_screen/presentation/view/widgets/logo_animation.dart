
import 'package:flutter/material.dart';

import '../../../../../core/utliz/assets.dart';
import '../../../../../core/utliz/stayles.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({
    super.key,
    required Animation<double> fadeAnimation,
  }) : _fadeAnimation = fadeAnimation;

  final Animation<double> _fadeAnimation;

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _fadeAnimation,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            Assets.imageLogo,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              children: [
                Image.asset(
                  Assets.imageLogoname,
                  fit: BoxFit.fill,
                ),
                Text(
                  "online groceries",
                  style: Styles.textStyle14,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


