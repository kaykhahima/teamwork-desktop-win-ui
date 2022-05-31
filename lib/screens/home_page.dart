import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';

class Shell extends StatelessWidget {
  const Shell({Key? key}) : super(key: key);

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
                        color: Color(0xffe7e9eb),
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
          _listTileWithIcon(LineIcons.checkCircle, 'Tasks'),
          _listTileWithIcon(LineIcons.listUl, 'Activities'),
          const Divider(
            thickness: 0.0,
          ),
          _listTileWithIcon(LineIcons.thLarge, 'Dashboard'),
          _listTileWithIcon(LineIcons.inbox, 'Projects'),
          _listTileWithIcon(LineIcons.userFriends, 'Teams'),
          _listTileWithIcon(LineIcons.calendarMinus, 'Calendar'),
          const SizedBox(height: 20.0),
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
        color: const Color(0xffaeaeae),
        size: 22.0,
      ),
      title: Text(
        title,
      ),
      horizontalTitleGap: 0,
      dense: true,
    );
  }

  Widget _projectsList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text('Projects'),
        ),
        _listTileWithIcon(LineIcons.circle, 'Google Ads'),
        _listTileWithIcon(LineIcons.circle, 'WayFinder'),
        _listTileWithIcon(LineIcons.circle, 'Internal Test'),
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
              color: Colors.black,),
            unSelectedTextStyle: const TextStyle(
              color: Colors.grey,),
            selectedBackgroundColors: const [Colors.white],
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
              backgroundColor: Colors.blueAccent,
              child: Text('K'),
            ),
            const SizedBox(width: 10.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Kay Khahima'),
                Text('github.com/kaykhahima'),
              ],
            ),
            const Spacer(),
            IconButton(onPressed: (){}, icon: const Icon(LineIcons.horizontalEllipsis))
          ],
        )
      ],
    );
  }
}




