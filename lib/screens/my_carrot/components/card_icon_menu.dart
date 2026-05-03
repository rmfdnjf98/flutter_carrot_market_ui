import 'package:flutter/material.dart';
import 'package:flutter_carrot_market_ui/models/icon_menu.dart';

class CardIconMenu extends StatelessWidget {
  final List<IconMenu> iconMenuList;
  const CardIconMenu({super.key, required this.iconMenuList});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          // 1. List.generate 로 메뉴 개수만큼 행 만들기
          children: List.generate(
            iconMenuList.length,
            (index) => _buildRowIconItem(
              iconMenuList[index].title,
              iconMenuList[index].iconData,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildRowIconItem(String title, IconData iconData) {
    return Builder(
      builder: (context) => SizedBox(
        height:
            50, // 자식에 크기만 주는 용도라면 Container 보다 SizedBox 가 가벼움 (lint: sized_box_for_whitespace)
        child: Row(
          children: [
            Icon(iconData, size: 17),
            const SizedBox(width: 20),
            Text(title, style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
      ),
    );
  }
}
