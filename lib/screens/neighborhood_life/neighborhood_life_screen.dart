import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_carrot_market_ui/models/neighborhood_life.dart';
import 'package:flutter_carrot_market_ui/screens/components/appbar_preferred_size.dart';
import 'package:flutter_carrot_market_ui/screens/neighborhood_life/components/life_body.dart';
import 'package:flutter_carrot_market_ui/screens/neighborhood_life/components/life_header.dart';

class NeighborhoodLifeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('동네생활'),
        actions: [
          IconButton(icon: const Icon(CupertinoIcons.search), onPressed: () {}),
          IconButton(
            icon: const Icon(CupertinoIcons.plus_rectangle_on_rectangle),
            onPressed: () {},
          ),
          IconButton(icon: const Icon(CupertinoIcons.bell), onPressed: () {}),
        ],
        bottom: appBarBottomLine(),
      ),
      body: ListView(
        children: [
          LifeHeader(),
          // 1. 스프레드 연산자 (...) 로 리스트를 "펼쳐서" children 에 끼워 넣기
          ...List.generate(
            neighborhoodLifeList.length,
            (index) => Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: LifeBody(
                neighborhoodLife: neighborhoodLifeList[index],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
