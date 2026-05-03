import 'package:flutter/material.dart';
import 'package:flutter_carrot_market_ui/models/icon_menu.dart';
import 'package:flutter_carrot_market_ui/screens/components/appbar_preferred_size.dart';
import 'package:flutter_carrot_market_ui/screens/my_carrot/components/card_icon_menu.dart';
import 'package:flutter_carrot_market_ui/screens/my_carrot/my_carrot_header.dart';

class MyCarrotScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('나의 당근당근'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
        bottom: appBarBottomLine(),
      ),
      body: ListView(
        children: [
          MyCarrotHeader(),
          const SizedBox(height: 8),
          CardIconMenu(iconMenuList: iconMenu1),
          const SizedBox(height: 8),
          CardIconMenu(iconMenuList: iconMenu2),
          const SizedBox(height: 8),
          CardIconMenu(iconMenuList: iconMenu3),
        ],
      ),
    );
  }
}
