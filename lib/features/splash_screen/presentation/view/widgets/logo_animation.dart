
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
          Expanded(
            child: Column(
              children: [
                Expanded(
                  flex: 5,
                  child: Image.asset(
                    Assets.imageLogoname,
                    fit: BoxFit.fill,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    "online groceries",
                    style: Styles.textStyle14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


