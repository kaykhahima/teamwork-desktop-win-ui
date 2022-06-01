import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:teamwork/theme/theme.dart';
import 'package:badges/badges.dart';

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
                  child: const _SideMenu(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _SideMenu extends StatefulWidget {
  const _SideMenu({Key? key}) : super(key: key);

  @override
  State<_SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<_SideMenu> {

  final ThemeData theme = teamWorkTheme;

  var _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _menuHeader(),
          const SizedBox(height: 20.0),
          _listTileWithIconAndCounter(LineIcons.checkCircle, 'Tasks', 9, colorPrimary, colorLight),
          _listTileWithIconAndCounter(LineIcons.listUl, 'Activities', 32, colorAlert, colorLight),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
            child: Divider(
              height: 1.0,
            ),
          ),
          _listTileWithIcon(LineIcons.thLarge, 'Dashboard'),
          _listTileWithIcon(LineIcons.inbox, 'Projects'),
          _listTileWithIcon(LineIcons.userFriends, 'Teams'),
          _listTileWithIcon(LineIcons.calendarMinus, 'Calendar'),
          const SizedBox(height: 30.0),
          _projectsList(),
          const Spacer(),
          _sideBarFooter(),
        ],
      ),
    );
  }

  Widget _menuHeader() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children:  [
          Image.asset(
            'assets/teamwork-logo.png',
            height: 48.0,
            filterQuality: FilterQuality.high,
          ),
        ],
      ),
    );
  }

  Widget _listTileWithIcon(IconData icon, String title) {
    return ListTile(
      leading: Icon(
        icon,
        color: colorGray100,
        size: 22.0,
      ),
      title: Text(
        title,
        style: theme.textTheme.headline6,
      ),
      horizontalTitleGap: 0,
      dense: true,
    );
  }

  Widget _listTileWithIconAndCounter(IconData icon, String title, int counter, Color badgeColor, Color textColor) {
    return ListTile(
      leading: Icon(
        icon,
        color: colorGray100,
        size: 22.0,
      ),
      title: Text(
        title,
        style: theme.textTheme.headline6,
      ),
      horizontalTitleGap: 0,
      dense: true,
      trailing: Badge(
        badgeContent: Text(counter.toString(), style: theme.textTheme.bodyText2?.copyWith(
          color: textColor,
          fontSize: 12.0,
          fontWeight: FontWeight.w500
        ),),
        badgeColor: badgeColor,
        elevation: 0.0,
        shape: BadgeShape.square,
        borderRadius: BorderRadius.circular(6.0),
        padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 4.0),
      ),
    );
  }

  Widget _projectsList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text('Projects', style: theme.textTheme.subtitle1?.copyWith(
            fontWeight: FontWeight.w500,
            fontSize: 11.0,
          ),),
        ),
        _listTileWithIconAndCounter(LineIcons.circle, 'Google Ads', 9, colorGray60, colorGray80),
        _listTileWithIconAndCounter(LineIcons.circle, 'WayFinder', 3, colorGray60, colorGray80),
        _listTileWithIconAndCounter(LineIcons.circle, 'Internal Test', 12, colorGray60, colorGray80),
        const SizedBox(height: 20.0,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: [
              const Icon(LineIcons.angleDown, color: colorGray80, size: 13.0,),
              const SizedBox(width: 20.0,),
              Text('Show More', style: theme.textTheme.subtitle1,),
            ],
          ),
        )
      ],
    );
  }

  Widget _sideBarFooter() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:  [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: FlutterToggleTab(
            width: 15,
            borderRadius: 50,
            isScroll: false,
            isShadowEnable: false,
            marginSelected: const EdgeInsets.all(4.0),
            selectedIndex: _selectedIndex,
            selectedTextStyle: const TextStyle(
              color: colorDark,),
            unSelectedTextStyle: const TextStyle(
              color: colorGray80,),
            selectedBackgroundColors: const [colorLight],
            labels: const ['', ''],
            icons: const [LineIcons.sun, LineIcons.moonAlt],
            selectedLabelIndex: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        ),
        Row(
          children: [
            const CircleAvatar(
              backgroundColor: colorPrimary,
              child: Text('K'),
            ),
            const SizedBox(width: 10.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Kay Khahima', style: theme.textTheme.bodyText2?.copyWith(
                  color: colorDark,
                  fontWeight: FontWeight.w700,
                ),),
                const SizedBox(height: 2.0,),
                Text('github.com/kaykhahima', style: theme.textTheme.subtitle1,),
              ],
            ),
            const Spacer(),
            IconButton(onPressed: (){}, icon: const Icon(LineIcons.horizontalEllipsis, color: colorGray80,))
          ],
        )
      ],
    );
  }
}




