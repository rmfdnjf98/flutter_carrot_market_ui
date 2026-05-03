import 'package:flutter/material.dart';
import 'package:flutter_carrot_market_ui/models/chat_message.dart';
import 'package:flutter_carrot_market_ui/screens/chatting/components/chat_container.dart';
import 'package:flutter_carrot_market_ui/screens/components/appbar_preferred_size.dart';

class ChattingScreen extends StatelessWidget {
  const ChattingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('채팅'),
        bottom: appBarBottomLine(), // 1. 재사용 위젯
      ),
      // 2. ListView.generate 대신 ListView( children: List.generate(...) )
      body: ListView(
        children: List.generate(
          chatMessageList.length,
          (index) => ChatContainer(chatMessage: chatMessageList[index]),
        ),
      ),
    );
  }
}
