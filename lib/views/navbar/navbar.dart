import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_shopping_app/constants/colors.dart';
import 'package:grocery_shopping_app/controllers/navbar_controller.dart';
import 'package:grocery_shopping_app/views/pages/shop.dart';
import 'package:grocery_shopping_app/views/pages/explore.dart';
import 'package:grocery_shopping_app/views/pages/cart.dart';
import 'package:grocery_shopping_app/views/pages/favourite.dart';
import 'package:grocery_shopping_app/views/pages/account.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final controller = Get.put(NavbarController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavbarController>(builder: (context) {
      return Scaffold(
        body: IndexedStack(
          index: controller.tabIndex,
          children: const [Shop(), Explore(), Cart(), Favourite(), Settings()],
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                offset: const Offset(0, -4),
              ),
            ],
          ),
          child: BottomNavigationBar(
            selectedItemColor: AppColors.buttonAdd,
            unselectedItemColor: AppColors.textPrimary,
            showUnselectedLabels: true,
            currentIndex: controller.tabIndex,
            onTap: controller.changeTabIndex,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.shop, size: 28),
                ),
                label: 'Shop',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.search, size: 28),
                ),
                label: 'Explore',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.shopping_cart, size: 28),
                ),
                label: 'Cart',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.favorite, size: 28),
                ),
                label: 'Favourite',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.person, size: 28),
                ),
                label: 'Account',
              ),
            ],
            selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
            unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      );
    });
  }
}
