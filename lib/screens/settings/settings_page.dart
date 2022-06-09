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
      child: Container(
        color: colorLight,
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 30.0),
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
                    selectedTextStyle: theme.textTheme.subtitle1!.copyWith(
                        color: colorDark, fontWeight: FontWeight.w600),
                    unSelectedTextStyle: theme.textTheme.subtitle1!.copyWith(
                        color: colorGray80, fontWeight: FontWeight.w600),
                    selectedBackgroundColors: const [colorLight],
                    labels: const ['General', 'Workspace'],
                    selectedLabelIndex: (index) {},
                  ),
                  const Spacer(),
                  Material(
                    child: SizedBox(
                      width: 175.0,
                      child: SizedBox(
                        child: PopupMenuButton(
                          tooltip: 'Create New',
                          color: colorLight,
                          position: PopupMenuPosition.under,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                          itemBuilder: (context) {
                            return [
                              PopupMenuItem(value: 1,child: _buildPopUpMenuList(LineIcons.inbox, 'Projects', 'ctrl', 't'),),
                              PopupMenuItem(value: 1,child: _buildPopUpMenuList(LineIcons.checkCircle, 'Tasks', 'ctrl', 'p'),),
                              PopupMenuItem(value: 1,child: _buildPopUpMenuList(LineIcons.userFriends, 'Team', 'ctrl', 'f'),),
                              PopupMenuItem(value: 1,child: _buildPopUpMenuList(LineIcons.calendarMinus, 'Event', 'ctrl', 'e'),),
                            ];
                          },
                          child: Container(
                            height: 45.0,
                            decoration: BoxDecoration(
                              color: colorPrimary,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(LineIcons.plus, color: colorLight, size: 15.0,),
                                const SizedBox(width: 10.0,),
                                Text('Create New', style: theme.textTheme.bodyText2?.copyWith(
                                  color: colorLight,
                                  fontWeight: FontWeight.w400,
                                ),),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              height: 1.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 30.0),
              child: SizedBox(
                // color: Colors.red,
                height: 620.0,
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
                        overlayColor: MaterialStateProperty.all<Color>(
                            Colors.transparent),
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
      ),
    );
  }

  Widget _buildPopUpMenuList(IconData icon, String title, String shortCutKey1, String shortCutKey2) {
    return ListTile(
      leading: Icon(
        icon,
        color: colorDark,
        size: 20.0,
      ),
      title: Text(
        title,
        style: theme.textTheme.headline6?.copyWith(
          color: colorDark,
          fontSize: 14,
        ),
      ),
      trailing: Container(
        height: 28.0,
        width: 55.0,
        decoration: BoxDecoration(
          border: Border.all(color: colorGray60, width: 2.0),
          borderRadius: const BorderRadius.all(
            Radius.circular(6.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Center(
            child: Text('${shortCutKey1.toUpperCase()} + ${shortCutKey2.toUpperCase()}', style: theme.textTheme.subtitle1?.copyWith(
              color: colorDark,
              fontSize: 9.5,
              fontWeight: FontWeight.bold,
            ),),
          ),
        ),
      ),
      horizontalTitleGap: 0,
      dense: true,
      contentPadding: const  EdgeInsets.all(0),
    );

  }
}
