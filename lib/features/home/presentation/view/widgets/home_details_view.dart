import 'package:appnest/features/home/presentation/view/widgets/iteams.dart';
import 'package:flutter/material.dart';

import 'details_header.dart';

class HomeDetails extends StatelessWidget {
  const HomeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DetailsHeader(),
            IteamsWidgets(),
          ],
        ),
      ),
    );
  }
}
