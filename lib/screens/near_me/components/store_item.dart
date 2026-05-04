import 'package:flutter/material.dart';
import 'package:flutter_carrot_market_ui/models/recommend_store.dart';

class StoreItem extends StatelessWidget {
  final RecommendStore recommendStore;

  const StoreItem({super.key, required this.recommendStore});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 0.3, color: Colors.grey),
      ),
      width: 280,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 1. 상단 이미지 두 장 (코너 둥글게)
          Row(
            children: [
              Expanded(child: buildClipRRect(imageIndex: 0, topLeft: 10)),
              const SizedBox(width: 2),
              Expanded(child: buildClipRRect(imageIndex: 1, topRight: 10)),
            ],
          ),
          // 2. 가게 이름·동
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '${recommendStore.storeName} ',
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                      TextSpan(text: '${recommendStore.location}'),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                // 3. 한 줄 소개
                Text(
                  recommendStore.description,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 8),
                // 4. 후기·관심 수
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '후기 ${recommendStore.commentCount}',
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.blue,
                        ),
                      ),
                      TextSpan(
                        text: ' · 관심 ${recommendStore.likeCount}',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                // 5. 대표 댓글
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '${recommendStore.commentUser} ',
                          style: const TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: '${recommendStore.comment}',
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // 더 바깥 이미지 코너 2개만 둥글게
  ClipRRect buildClipRRect({
    required int imageIndex,
    double topLeft = 0,
    double topRight = 0,
  }) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(topLeft),
        topRight: Radius.circular(topRight),
      ),
      child: Image.network(
        recommendStore.storeImages[imageIndex],
        width: double.infinity,
        height: 100,
        fit: BoxFit.cover,
      ),
    );
  }
}
