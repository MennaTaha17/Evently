import 'package:evently/common/theme/app_colors.dart';
import 'package:evently/home/fav_tab/fav_tab.dart';
import 'package:evently/home/home_tab/home_tab.dart';
import 'package:evently/home/settings_tab/settings_tab.dart';
import 'package:evently/screens/new_event_screen.dart';
import 'package:flutter/material.dart';
import 'package:evently/gen/assets.gen.dart';

class MainLayerScreen extends StatefulWidget {
  const MainLayerScreen({super.key});
  static const String routeName = '/main_layer';
  @override
  State<MainLayerScreen> createState() => _MainLayerScreenState();
}

class _MainLayerScreenState extends State<MainLayerScreen> {
  int currentIndex = 0;
  List<Widget> tab = [
    HomeTab(),
    Container(color: AppColors.mainColor),
    FavTab(),
   SettingsTab(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tab[currentIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        decoration: BoxDecoration(color: AppColors.lightBgColor,shape: BoxShape.circle),
        padding: EdgeInsets.all(2),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pushNamed(NewEventScreen.routeName);
          },
          backgroundColor:
              Theme.of(context).bottomNavigationBarTheme.backgroundColor,
          shape: CircleBorder(),
          child: Icon(Icons.add, color: AppColors.lightBgColor, size: 35),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        clipBehavior: Clip.hardEdge,
        notchMargin: 5,
        padding: EdgeInsets.zero,
        shape: CircularNotchedRectangle(),
        child: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          currentIndex: currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Assets.images.svg.unSelHomeIc.svg(),
              activeIcon: Assets.images.svg.selHomeIc.svg(),
              label: 'Home', // ToDo Localization
            ),
            BottomNavigationBarItem(
              icon: Assets.images.svg.unSelMapIc.svg(),
              activeIcon: Assets.images.svg.selMapIc.svg(),
              label: 'Map', // ToDo Localization
            ),
            BottomNavigationBarItem(
              icon: Assets.images.svg.unSelFavIc.svg(),
              activeIcon: Assets.images.svg.selFavIc.svg(),
              label: 'Love', // ToDo Localization
            ),
            BottomNavigationBarItem(
              icon: Assets.images.svg.unSelPerIc.svg(),
              activeIcon: Assets.images.svg.selPerIc.svg(),
              label: 'Person', // ToDo Localization
            ),
          ],
          backgroundColor:
              Theme.of(context).bottomNavigationBarTheme.backgroundColor,
        ),
      ),
    );
  }
}
