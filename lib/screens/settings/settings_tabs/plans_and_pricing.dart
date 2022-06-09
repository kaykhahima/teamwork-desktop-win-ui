import 'package:flutter/material.dart';
import 'package:steps_indicator/steps_indicator.dart';

import '../../../theme/theme.dart';

class PlansAndPricingTab extends StatelessWidget {
  PlansAndPricingTab({Key? key}) : super(key: key);

  final ThemeData theme = teamWorkTheme;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Plans & Pricing',
              style: theme.textTheme.headline4?.copyWith(
                fontSize: 15.0,
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            Text(
              'Simple pricing. No hidden fees. Advanced features for your business.',
              style: theme.textTheme.bodyText2,
            ),
            const SizedBox(
              height: 60.0,
            ),
            // const StepsIndicator(
            //   selectedStep: 1,
            //   nbSteps: 5,
            //   lineLength: 150,
            // ),
          ],
        ),
      ),
    );
  }
}
