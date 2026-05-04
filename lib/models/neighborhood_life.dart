class NeighborhoodLife {
  final String category; // "우리동네질문" · "분실" 등
  final String profileImgUri;
  final String userName;
  final String location;
  final String content;
  final String contentImgUri; // 이미지가 없으면 명시적으로 빈 문자열
  final int commentCount;
  final int authCount;
  final String date;

  NeighborhoodLife({
    required this.category,
    required this.profileImgUri,
    required this.userName,
    required this.location,
    required this.content,
    required this.contentImgUri,
    required this.commentCount,
    required this.authCount,
    required this.date,
  });
}

String lifeTitle = '이웃과 함께 만드는 봄 간식 지도. 마음까지 따뜰해지는 봄 간식들을 만나보세요!';

List<NeighborhoodLife> neighborhoodLifeList = [
  NeighborhoodLife(
    category: '우리동네질문',
    profileImgUri: 'https://picsum.photos/id/871/200/100?grayscale',
    userName: '헬로비비',
    location: '부전동',
    content:
        '예민한 개도 미용할 수 있는 곳이나 동물 병원 아는곳이 있을까요? \n설마 대하다 대체오기\n 했는데 아직 성행이 잘 안되서 걱정이 되서요 ㅠ',
    contentImgUri: 'https://picsum.photos/id/872/200/100?grayscale',
    commentCount: 11,
    authCount: 3,
    date: '3시간전',
  ),
  NeighborhoodLife(
    category: '우리동네소식',
    profileImgUri: 'https://picsum.photos/id/873/200/100?grayscale',
    userName: '당근토끼',
    location: '전포동',
    content: '임플란트 치료 잘 아시는 분 계세요?',
    contentImgUri: 'https://picsum.photos/id/874/200/100?grayscale',
    commentCount: 2,
    authCount: 1,
    date: '1일전',
  ),
  NeighborhoodLife(
    category: '분실',
    profileImgUri: 'https://picsum.photos/id/875/200/100?grayscale',
    userName: 'flutter',
    location: '동동동',
    content: '롯데캐슬A동 방향으로 재래시장 앞을 지나 혹시 에어팟 한쪽 주우신 분 계신가요?',
    contentImgUri: '',
    commentCount: 11,
    authCount: 8,
    date: '1일전',
  ),
  NeighborhoodLife(
    category: '우리동네소식',
    profileImgUri: 'https://picsum.photos/id/880/200/100',
    userName: '구름나디리',
    location: '딩동',
    content: '밤부터 새벽까지 하던 토스트 아저씨 언제 다시 오나요ㅠㅠ',
    contentImgUri: '',
    commentCount: 0,
    authCount: 7,
    date: '3일전',
  ),
  NeighborhoodLife(
    category: '우리동네질문',
    profileImgUri: 'https://picsum.photos/id/730/200/100?grayscale',
    userName: '아는형',
    location: '딩동댕동',
    content: '아니 이 시간에 마이크 들고 녹음하는 사람은 정상인가요?',
    contentImgUri: 'https://picsum.photos/id/885/200/100',
    commentCount: 11,
    authCount: 2,
    date: '5일전',
  ),
];
