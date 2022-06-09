import 'package:teamwork/model/package_features_model.dart';

class Package {
  final String packageName;
  final String packageDescription;
  final String packagePrice;
  final String packagePriceDescription;
  final String packageButtonText;
  final List<PackageFeature> feature;

  Package(
      {required this.packageName,
      required this.packageDescription,
      required this.packagePrice,
      required this.packagePriceDescription,
      required this.packageButtonText,
      required this.feature});
}

List<PackageFeature> packageFeature = [
  PackageFeature(
      feature1: 'Unlimited projects',
      feature2: 'Share with 5 team members',
      feature3: 'Sync across devices',
      feature4: '',
      feature5: ''),
  PackageFeature(
      feature1: 'Everything in Free Plan',
      feature2: 'Unlimited Projects',
      feature3: 'Share with 5 team members',
      feature4: '30 day version history',
      feature5: ''),
  PackageFeature(
      feature1: 'Everything in Pro Plan',
      feature2: 'Unlimited team members',
      feature3: 'Collaborative work space',
      feature4: 'Sharing permissions',
      feature5: 'Admin tools'),
  PackageFeature(
      feature1: 'Everything in Team Plan',
      feature2: 'Advanced security',
      feature3: 'Custom contract',
      feature4: 'User provisioning (SCIM)',
      feature5: 'SAML SSO'),
];

List<Package> packages = [
  Package(
    packageName: 'Personal',
    packageDescription: 'Perfect plan for Starters',
    packagePrice: 'Free',
    packagePriceDescription: 'For a Lifetime',
    packageButtonText: 'Current Plan',
    feature: packageFeature,
  ),
  Package(
    packageName: 'Professional',
    packageDescription: 'For users who want to do more',
    packagePrice: '\$99',
    packagePriceDescription: '/year',
    packageButtonText: 'Try for Free',
    feature: packageFeature,
  ),
  Package(
    packageName: 'Team',
    packageDescription: 'Your entire team in one place',
    packagePrice: '\$249',
    packagePriceDescription: '/year',
    packageButtonText: 'Try for Free',
    feature: packageFeature,
  ),
  Package(
    packageName: 'Enterprise',
    packageDescription: 'Run your company on your terms',
    packagePrice: 'Custom',
    packagePriceDescription: 'Reach out for a quote',
    packageButtonText: 'Contact Us',
    feature: packageFeature,
  ),
];
