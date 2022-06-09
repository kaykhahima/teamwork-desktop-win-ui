import 'package:teamwork/model/package_features_model.dart';

class Package {
  final int packageId;
  final String imgUrl;
  final String packageName;
  final String packageDescription;
  final String packagePrice;
  final String packagePriceDescription;
  final String packageButtonText;
  final List<PackageFeature> feature;

  Package(
      {required this.packageId,
      required this.imgUrl,
      required this.packageName,
      required this.packageDescription,
      required this.packagePrice,
      required this.packagePriceDescription,
      required this.packageButtonText,
      required this.feature});
}

List<PackageFeature> packageFeature = [
  PackageFeature(
      packageId: 1,
      feature1: 'Unlimited projects',
      feature2: 'Everything in Free Plan',
      feature3: 'Everything in Pro Plan',
      feature4: 'Everything in Team Plan',
      feature5: ''),
  PackageFeature(
      packageId: 2,
      feature1: 'Share with 5 team members',
      feature2: 'Unlimited Projects',
      feature3: 'Unlimited team members',
      feature4: 'Advanced security ',
      feature5: ''),
  PackageFeature(
      packageId: 3,
      feature1: 'Sync across devices',
      feature2: 'Share with 5 team members',
      feature3: 'Collaborative work space',
      feature4: 'Custom contract',
      feature5: ''),
  PackageFeature(
      packageId: 4,
      feature1: '',
      feature2: '30 day version history',
      feature3: 'Sharing permissions',
      feature4: 'User provisioning (SCIM)',
      feature5: ''),
  PackageFeature(
      packageId: 5,
      feature1: '',
      feature2: '',
      feature3: 'Admin tools',
      feature4: 'SAML SSO',
      feature5: ''),
];

List<Package> packages = [
  Package(
    packageId: 1,
    imgUrl: 'assets/images/red-logo.png',
    packageName: 'Personal',
    packageDescription: 'Perfect plan for Starters',
    packagePrice: 'Free',
    packagePriceDescription: 'For a Lifetime',
    packageButtonText: 'Current Plan',
    feature: packageFeature,
  ),
  Package(
    packageId: 2,
    imgUrl: 'assets/images/blue-logo.png',
    packageName: 'Professional',
    packageDescription: 'For users who want to do more',
    packagePrice: '\$99',
    packagePriceDescription: '/year',
    packageButtonText: 'Try for Free',
    feature: packageFeature,
  ),
  Package(
    packageId: 3,
    imgUrl: 'assets/images/black-logo.png',
    packageName: 'Team',
    packageDescription: 'Your entire team in one place',
    packagePrice: '\$249',
    packagePriceDescription: '/year',
    packageButtonText: 'Try for Free',
    feature: packageFeature,
  ),
  Package(
    packageId: 4,
    imgUrl: 'assets/images/blue-logo.png',
    packageName: 'Enterprise',
    packageDescription: 'Run your company on your terms',
    packagePrice: 'Custom',
    packagePriceDescription: 'Reach out for a quote',
    packageButtonText: 'Contact Us',
    feature: packageFeature,
  ),
];
