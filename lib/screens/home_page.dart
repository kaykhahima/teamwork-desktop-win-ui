import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:teamwork/theme/theme.dart';
import 'package:badges/badges.dart';

import 'settings/settings_page.dart';
import '../widgets/sidemenu.dart';

class Shell extends StatelessWidget {
  Shell({Key? key}) : super(key: key);

  final ThemeData theme = teamWorkTheme;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Container(
                  width: 280.0,
                  height: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    border: Border(
                      right: BorderSide(
                        color: colorGray60,
                        width: 2.0,
                      ),
                    ),
                  ),
                  child: const SideMenu(),
                ),
                const SettingsPage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


