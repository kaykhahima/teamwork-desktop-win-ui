import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import 'package:teamwork/model/packages_model.dart';
import 'package:teamwork/widgets/package_features.dart';

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
              height: 20.0,
            ),
            // const StepsIndicator(
            //   selectedStep: 1,
            //   nbSteps: 5,
            //   lineLength: 150,
            // ),
            SizedBox(
              height: 480,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: packages.length,
                  itemBuilder: (BuildContext context, int index) {
                    Package package = packages[index];
                    return Padding(
                      padding: const EdgeInsets.only(
                          right: 20.0, top: 8.0, bottom: 8.0),
                      child: HoverContainer(
                        width: 260.0,
                        decoration: BoxDecoration(
                          border: Border.all(color: colorGray60, width: 2.0),
                          color: Colors.white,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(16.0),
                          ),
                        ),
                        hoverDecoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: colorPrimary, width: 2.0),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(16.0),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                package.imgUrl,
                                height: 40.0,
                                filterQuality: FilterQuality.high,
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              Text(
                                package.packageName,
                                style: theme.textTheme.headline4?.copyWith(
                                  fontSize: 15.0,
                                ),
                              ),
                              const SizedBox(
                                height: 4.0,
                              ),
                              Text(
                                package.packageDescription,
                                style: theme.textTheme.subtitle1?.copyWith(
                                  fontSize: 12.0,
                                ),
                              ),
                              const SizedBox(
                                height: 15.0,
                              ),
                              Text(
                                package.packagePrice,
                                style: theme.textTheme.headline2?.copyWith(
                                  fontSize: 22.0,
                                  color: colorDark,
                                ),
                              ),
                              const SizedBox(
                                height: 4.0,
                              ),
                              Text(
                                package.packagePriceDescription,
                                style: theme.textTheme.subtitle1?.copyWith(
                                  fontSize: 12.0,
                                ),
                              ),
                              const SizedBox(
                                height: 15.0,
                              ),
                              Material(
                                child: ElevatedButton(
                                  style: theme.elevatedButtonTheme.style,
                                  onPressed: () {},
                                  child: Text(package.packageButtonText, style: const TextStyle(
                                    fontWeight: FontWeight.w400,
                                  ),),
                                ),
                              ),
                              const SizedBox(
                                height: 15.0,
                              ),
                              PackageFeatures(
                                packageId: package.packageId,
                                packageFeatures: package.feature,
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
