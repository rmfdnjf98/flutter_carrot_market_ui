import 'package:flutter/material.dart';
import 'package:flutter_carrot_market_ui/models/chat_message.dart';
import 'package:flutter_carrot_market_ui/models/chat_message.dart';
import 'package:flutter_carrot_market_ui/screens/components/image_container.dart';

class ChatContainer extends StatelessWidget {
  final ChatMessage chatMessage;

  const ChatContainer({super.key, required this.chatMessage});

  @override
  Widget build(BuildContext context) {
    return Container(
      // 1. 아래 경계선
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey, width: 0.5)),
      ),
      height: 100,
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          // 2. 왼쪽 원형 프로필
          ImageContainer(
            width: 50,
            height: 50,
            borderRadius: 25, // 원형이 되려면 width/2
            imageUrl: chatMessage.profileImage,
          ),
          const SizedBox(width: 16),
          // 3. 가운데 텍스트 영역
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(),
                // 3-1. 이름 + 위치 + 시간
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: chatMessage.sender,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      TextSpan(text: chatMessage.location),
                      TextSpan(text: ' · ${chatMessage.sendDate}'),
                    ],
                  ),
                ),
                const Spacer(),
                // 3-2. 메시지 본문 (1줄만, 길면 "…" 처리)
                Text(
                  chatMessage.message,
                  style: Theme.of(context).textTheme.bodyLarge,
                  overflow: TextOverflow.ellipsis,
                ),
                const Spacer(),
              ],
            ),
          ),
          // 4. 오른쪽 첨부 이미지 (있을 때만)
          Visibility(
            visible: chatMessage.imageUri != null,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: ImageContainer(
                width: 50,
                height: 50,
                borderRadius: 8,
                imageUrl: chatMessage.imageUri ?? '', // null 일 때 빈문자열
              ),
            ),
          ),
        ],
      ),
    );
  }
}
