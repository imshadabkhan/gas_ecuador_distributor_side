import 'package:flutter/material.dart';
import 'package:gas_ecuador_distributor_side/core/constants/assets_constants.dart';
import 'package:gas_ecuador_distributor_side/core/constants/color_constants.dart';
import 'package:gas_ecuador_distributor_side/view/bottombar/modules/balance/balance.dart';
import 'package:gas_ecuador_distributor_side/view/bottombar/modules/historial/historial.dart';
import 'package:gas_ecuador_distributor_side/view/bottombar/modules/home/home_screen.dart';
import 'package:gas_ecuador_distributor_side/view/bottombar/modules/map_screen/map_screen.dart';
import 'package:gas_ecuador_distributor_side/view/bottombar/modules/profile/profile_screen.dart';


class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
     HomeScreen(),
      OrderDetails(),
     MyBalance(),
    Historial(),
    const MyProfile(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: ColorConstants.primaryColor,
        unselectedItemColor: Colors.grey,
        backgroundColor: ColorConstants.whiteColor,
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              Assets.navBarIcon1,
              height: 20,
              width: 20,
              color: _currentIndex == 0
                  ? ColorConstants.primaryColor
                  : Colors.grey,
            ),
            label: 'Hogar',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              Assets.navBarIcon2,
              height: 20,
              width: 20,
              color: _currentIndex == 1
                  ? ColorConstants.primaryColor
                  : Colors.grey,
            ),
            label: 'ver Mapa',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              Assets.navBarIcon3,
              height: 20,
              width: 20,
              color: _currentIndex == 2
                  ? ColorConstants.primaryColor
                  : Colors.grey,
            ),
            label: 'Saldo',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              Assets.navBarIcon4,
              height: 20,
              width: 20,
              color: _currentIndex == 3
                  ? ColorConstants.primaryColor
                  : Colors.grey,
            ),
            label: 'Historial',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              Assets.navBarIcon5,
              height: 20,
              width: 20,
              color: _currentIndex == 4
                  ? ColorConstants.primaryColor
                  : Colors.grey,
            ),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}


