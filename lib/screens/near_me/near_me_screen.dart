import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_carrot_market_ui/screens/near_me/components/store_item.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_carrot_market_ui/models/recommend_store.dart';
import 'package:flutter_carrot_market_ui/screens/components/appbar_preferred_size.dart';
import 'package:flutter_carrot_market_ui/screens/near_me/components/bottom_title_icon.dart';
import 'package:flutter_carrot_market_ui/screens/near_me/components/round_border.dart';
import 'package:flutter_carrot_market_ui/screens/near_me/components/search_text_field.dart';

class NearMeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('내 근처'),
        actions: [
          IconButton(icon: const Icon(CupertinoIcons.pencil), onPressed: () {}),
          IconButton(icon: const Icon(CupertinoIcons.bell), onPressed: () {}),
        ],
        bottom: appBarBottomLine(),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 10),
          // 1. 검색 텍스트 필드
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: SearchTextField(),
          ),
          SizedBox(
            height: 66,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: searchKeyword.length,
              itemBuilder: (context, index) {
                return Center(
                  child: RoundBorderText(
                    title: searchKeyword[index],
                    position: index,
                  ),
                );
              },
            ),
          ),
          Divider(color: Colors.grey[100], thickness: 10),
          // 3. Wrap 으로 8개 카테고리 아이콘
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 30),
            child: Wrap(
              alignment: WrapAlignment.start,
              spacing: 22.0,
              runSpacing: 30,
              children: const [
                BottomTitleIcon(title: '구인구직', iconData: FontAwesomeIcons.user),
                BottomTitleIcon(
                  title: '과외/클래스',
                  iconData: FontAwesomeIcons.penToSquare,
                ),
                BottomTitleIcon(
                  title: '농수산물',
                  iconData: FontAwesomeIcons.appleWhole,
                ),
                BottomTitleIcon(title: '부동산', iconData: FontAwesomeIcons.hotel),
                BottomTitleIcon(title: '중고차', iconData: FontAwesomeIcons.car),
                BottomTitleIcon(
                  title: '전시/행사',
                  iconData: FontAwesomeIcons.chessBishop,
                ),
                BottomTitleIcon(
                  title: '술집',
                  iconData: FontAwesomeIcons.wineGlass,
                ),
                BottomTitleIcon(title: '애완동물', iconData: FontAwesomeIcons.dog),
              ],
            ),
          ),
          const SizedBox(height: 50),
          // 4. 이웃들의 추천 가게
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              '이웃들의 추천 가게',
              style: Theme.of(context).textTheme.displayMedium,
            ),
          ),
          const SizedBox(height: 20),
          // 5. StoreItem 수평 스크롤
          Container(
            // 높이 고정
            height: 300,
            child: ListView.builder(
              // 수평 스크롤
              scrollDirection: Axis.horizontal,
              itemCount: recommendStoreList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: StoreItem(
                    recommendStore: recommendStoreList[index],
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}
