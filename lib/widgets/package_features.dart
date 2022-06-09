import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:teamwork/model/package_features_model.dart';

import '../theme/theme.dart';

class PackageFeatures extends StatelessWidget {
  PackageFeatures(
      {Key? key, required this.packageFeatures, required this.packageId})
      : super(key: key);

  final List<PackageFeature> packageFeatures;
  final int packageId;
  final ThemeData theme = teamWorkTheme;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: ListView.builder(
          itemCount: packageFeatures.length,
          itemBuilder: (BuildContext context, int index) {
            PackageFeature feature = packageFeatures[index];
            return ListTile(
              leading: _buildIconList(feature),
              title: _buildFeatureList(feature),
              dense: true,
              horizontalTitleGap: 0,
            );
          }),
    );
  }

  Widget _buildFeatureList(PackageFeature feature) {
    switch (packageId) {
      case 1:
        return Text(
          feature.feature1,
          style: theme.textTheme.subtitle1?.copyWith(
            fontSize: 12.0,
            color: colorGray100,
          ),
        );
      case 2:
        return Text(
          feature.feature2,
          style: theme.textTheme.subtitle1?.copyWith(
            fontSize: 12.0,
            color: colorGray100,
          ),
        );
      case 3:
        return Text(
          feature.feature3,
          style: theme.textTheme.subtitle1?.copyWith(
            fontSize: 12.0,
            color: colorGray100,
          ),
        );
      case 4:
        return Text(
          feature.feature4,
          style: theme.textTheme.subtitle1?.copyWith(
            fontSize: 12.0,
            color: colorGray100,
          ),
        );
      case 5:
        return Text(
          feature.feature5,
          style: theme.textTheme.subtitle1?.copyWith(
            fontSize: 12.0,
            color: colorGray100,
          ),
        );
      default:
        return const SizedBox.shrink();
    }
  }

  Widget _buildIconList(PackageFeature feature) {

    bool isNotEmpty = true;
    bool isNotEmpty2 = true;

    if(feature.feature1.isEmpty) {
      isNotEmpty = false;
    }
    if(feature.feature2.isEmpty) {
      isNotEmpty2 = false;
    }

    switch (packageId) {
      case 1:
        return isNotEmpty ? const Icon(
          LineIcons.check,
          color: colorSuccess,
          size: 15.0,
        ) : const SizedBox.shrink();
      case 2:
        return isNotEmpty2 ? const Icon(
          LineIcons.check,
          color: colorSuccess,
          size: 15.0,
        ) : const SizedBox.shrink();
      case 3:
        return const Icon(
          LineIcons.check,
          color: colorSuccess,
          size: 15.0,
        );
      case 4:
        return const Icon(
          LineIcons.check,
          color: colorSuccess,
          size: 15.0,
        );
      case 5:
        return const Icon(
          LineIcons.check,
          color: colorSuccess,
          size: 15.0,
        );
      default:
        return const SizedBox.shrink();
    }
  }
}
