class ChatMessage {
  final String sender; // 보낸 사람 이름
  final String profileImage; // 프로필 URL
  final String location; // 위치 (동 이름)
  final String sendDate; // "1일전", "3시간전"
  final String message; // 메시지 본문
  final String? imageUri; // 첨부 이미지 (있을 수도, 없을 수도) — ? 가 null 허용 표시

  ChatMessage({
    required this.sender,
    required this.profileImage,
    required this.location,
    required this.sendDate,
    required this.message,
    this.imageUri, // null 가능하니 required 안 붙임
  });
}

List<ChatMessage> chatMessageList = [
  ChatMessage(
    sender: '당근 · ',
    profileImage: 'https://picsum.photos/id/870/200/100?grayscale',
    location: '대부동',
    sendDate: '1일전',
    message: 'developer 님, 근처에 다양한 물건들이 아주 많이있습니다.',
  ),
  ChatMessage(
    sender: 'Flutter',
    profileImage: 'https://picsum.photos/id/880/200/100?grayscale',
    location: '중동',
    sendDate: '2일전',
    message: '안녕하세요 지금 다 예약 상태 인가요?',
    imageUri: 'https://picsum.photos/id/890/200/100?grayscale',
  ),
];
