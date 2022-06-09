import 'package:flutter/material.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:line_icons/line_icons.dart';
import 'package:teamwork/screens/settings/settings_tabs/plans_and_pricing.dart';

import '../../theme/theme.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage>
    with SingleTickerProviderStateMixin {
  final ThemeData theme = teamWorkTheme;
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 6);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Text(
                  'Settings',
                  style: theme.textTheme.headline4,
                ),
                const SizedBox(
                  width: 20.0,
                ),
                FlutterToggleTab(
                  width: 20,
                  height: 30.0,
                  borderRadius: 6,
                  isScroll: false,
                  isShadowEnable: false,
                  marginSelected: const EdgeInsets.all(3.0),
                  selectedIndex: 0,
                  selectedTextStyle: theme.textTheme.subtitle1!
                      .copyWith(color: colorDark, fontWeight: FontWeight.w600),
                  unSelectedTextStyle: theme.textTheme.subtitle1!.copyWith(
                      color: colorGray80, fontWeight: FontWeight.w600),
                  selectedBackgroundColors: const [colorLight],
                  labels: const ['General', 'Workspace'],
                  selectedLabelIndex: (index) {},
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () async {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(LineIcons.plus),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text('Create New'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            height: 1.0,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 8.0, vertical: 30.0),
            child: SizedBox(
              height: 600.0,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: TabBar(
                      controller: tabController,
                      isScrollable: true,
                      indicatorPadding:
                          const EdgeInsets.symmetric(vertical: -20.0),
                      indicatorColor: colorPrimary,
                      labelColor: colorPrimary,
                      unselectedLabelColor: colorGray100,
                      overlayColor:
                          MaterialStateProperty.all<Color>(Colors.transparent),
                      labelStyle: theme.textTheme.bodyText2?.copyWith(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w500,
                      ),
                      padding: const EdgeInsets.all(8.0),
                      tabs: const [
                        Text(
                          'Personal Details',
                        ),
                        Text(
                          'Password',
                        ),
                        Text(
                          'Plans & Pricing',
                        ),
                        Text(
                          'Payment & Billing',
                        ),
                        Text(
                          'Notifications',
                        ),
                        Text(
                          'Integrations',
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    height: 22.0,
                  ),
                  Expanded(
                    child: TabBarView(
                      controller: tabController,
                      children: [
                        PlansAndPricingTab(),
                        PlansAndPricingTab(),
                        PlansAndPricingTab(),
                        PlansAndPricingTab(),
                        PlansAndPricingTab(),
                        PlansAndPricingTab(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
