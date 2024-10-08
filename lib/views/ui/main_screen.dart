import 'package:flutter/material.dart';
import 'package:online_shop_app/controllers/main_screen_provider.dart';
import 'package:online_shop_app/views/shared/bottom_nav.dart';
import 'package:online_shop_app/views/ui/cart_page.dart';
import 'package:online_shop_app/views/ui/home_page.dart';
import 'package:online_shop_app/views/ui/profile_page.dart';
import 'package:online_shop_app/views/ui/search_page.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  List<Widget> pageList = const [
    HomePage(),
    SearchPage(),
    HomePage(),
    CartPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenNotifier>(
      builder: (context, mainScreenNotifier, child) {
        return Scaffold(
          backgroundColor: const Color(0xFFE2E2E2),
          body: pageList[mainScreenNotifier.pageIndex],
          bottomNavigationBar: const BottoNavBar(),
        );
      },
    );
  }
}
