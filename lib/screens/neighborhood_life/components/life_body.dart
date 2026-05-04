import 'package:flutter/material.dart';
import 'package:flutter_carrot_market_ui/models/neighborhood_life.dart';
import 'package:flutter_carrot_market_ui/screens/components/image_container.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LifeBody extends StatelessWidget {
  final NeighborhoodLife neighborhoodLife;

  const LifeBody({super.key, required this.neighborhoodLife});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            width: 0.5,
            color: Color(0xFFD4D5D0),
          ),
        ),
      ),
      child: Column(
        children: [
          _buildTop(),
          _buildWriter(context),
          _buildWriting(context),
          _buildImage(),
          const Divider(height: 1, color: Color(0xFFEFEFEF)),
          _buildTail(neighborhoodLife.commentCount),
        ],
      ),
    );
  }

  // 1. 상단 - 카테고리 척 (회색 배경 둥근 사각형)
  Widget _buildTop() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(4)),
              color: const Color.fromRGBO(247, 247, 247, 1),
            ),
            child: Builder(
              builder: (Context) => Text(
                neighborhoodLife.category,
                style: Theme.of(Context).textTheme.bodyMedium,
              ),
            ),
          ),
          Builder(
            builder: (context) => Text(
              neighborhoodLife.date,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }

  // 2. 작성자 - 프로필 이미지 + 이름 + 동 + 인증수
  _buildWriter(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          ImageContainer(
            width: 30,
            height: 30,
            borderRadius: 15,
            imageUrl: neighborhoodLife.profileImgUri,
          ),
          const SizedBox(width: 8),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: ' ${neighborhoodLife.userName}',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                TextSpan(text: ' ${neighborhoodLife.location}'),
                TextSpan(text: ' · 인증 ${neighborhoodLife.authCount}회'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // 3. 쓴 글
  Widget _buildWriting(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          neighborhoodLife.content,
          style: Theme.of(context).textTheme.bodyLarge,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.start,
        ),
      ),
    );
  }

  // 4. 이미지 (있을 때만)
  Visibility _buildImage() {
    return Visibility(
      visible: neighborhoodLife.contentImgUri != '',
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
        child: Image.network(
          neighborhoodLife.contentImgUri,
          height: 200,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  // 5. 하단 - 공감하기 + 댓글쓰기
  Padding _buildTail(int commentCount) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          const Icon(FontAwesomeIcons.faceSmile, color: Colors.grey, size: 22),
          const SizedBox(width: 8),
          const Text(
            '공감하기',
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
          const SizedBox(width: 22),
          const Icon(FontAwesomeIcons.comment, color: Colors.grey, size: 22),
          const SizedBox(width: 8),
          Text(
            '${commentCount > 0 ? "" : ""}댓글쓰기 $commentCount',
            style: const TextStyle(fontSize: 16, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
