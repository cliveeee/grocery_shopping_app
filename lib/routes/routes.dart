import 'package:get/get.dart';
import 'package:grocery_shopping_app/views/navbar/navbar.dart';
import 'package:grocery_shopping_app/views/pages/shop.dart';
import 'package:grocery_shopping_app/views/pages/explore.dart';
import 'package:grocery_shopping_app/views/pages/cart.dart';
import 'package:grocery_shopping_app/views/pages/favourite.dart';
import 'package:grocery_shopping_app/views/pages/account.dart';

class AppPages {
  static List<GetPage> routes = [
    GetPage(name: navbar, page: () => const NavBar()),
    GetPage(name: shop, page: () => const Shop()),
    GetPage(name: explore, page: () => const Explore()),
    GetPage(name: cart, page: () => const Cart()),
    GetPage(name: favourite, page: () => const Favourite()),
    GetPage(name: settings, page: () => const Settings()),
  ];

  static getnavbar() => navbar;
  static getshop() => shop;
  static getexplore() => explore;
  static getcart() => cart;
  static getfavourite() => favourite;
  static getsetting() => settings;

  static String navbar = '/';
  static String shop = '/shop';
  static String explore = '/explore';
  static String cart = '/cart';
  static String favourite = '/favourite';
  static String settings = '/settings';
}
