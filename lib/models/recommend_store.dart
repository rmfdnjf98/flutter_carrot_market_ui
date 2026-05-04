class RecommendStore {
  final String storeName;
  final String location;
  final String description;
  final int commentCount;
  final int likeCount;
  final String comment; // 대표 댓글 하나
  final String commentUser; // 그 댓글의 작성자
  final List<String> storeImages; // 가게 이미지 (보통 2장)

  RecommendStore({
    required this.storeName,
    required this.location,
    required this.description,
    required this.commentCount,
    required this.likeCount,
    required this.comment,
    required this.commentUser,
    required this.storeImages,
  });
}

// 상단 검색 키워드 칩
final List<String> searchKeyword = [
  '인테리어',
  '학원',
  '이사',
  '카페',
  '미용',
  '네일',
  '애완동물',
];

// "이웃들의 추천 가게" 세로 리스트 샘플
final List<RecommendStore> recommendStoreList = [
  RecommendStore(
    storeName: '네일가게',
    location: '동동동',
    description: '꼼꼼한 시술로 유지력 높은 네일샵입니다. 동동동에 위치하고 있습니다.',
    commentCount: 1,
    likeCount: 8,
    commentUser: '이엘리아님',
    comment: '너무 친절하게 시술해주셔서 좋았어요! 직장동료들에게도 추천합니다.',
    storeImages: [
      'https://picsum.photos/id/1011/200/100',
      'https://picsum.photos/id/1012/200/100',
    ],
  ),
  RecommendStore(
    storeName: '아이비봉의술',
    location: '딩동댕동',
    description: '2012년 오픈해 도서관 옆 대로에 위치하고 있습니다.',
    commentCount: 2,
    likeCount: 2,
    commentUser: 'fufu',
    comment: '도서관이나 근처서 시험기간마다 이용하면 너무 좋아요.',
    storeImages: [
      'https://picsum.photos/id/1021/200/100',
      'https://picsum.photos/id/1022/200/100',
    ],
  ),
  RecommendStore(
    storeName: '원어민 논술',
    location: '오잉잉동',
    description: '원어민 영어 고급논술&디베이트&스피치 전문',
    commentCount: 7,
    likeCount: 1,
    commentUser: 'kkglo님',
    comment: '제 친구 아들이 학원 주입식이 아닌 살아있는 영어 수업을 할 수 있어서 너무 좋네요.',
    storeImages: [
      'https://picsum.photos/id/1031/200/100',
      'https://picsum.photos/id/1032/200/100',
    ],
  ),
  RecommendStore(
    storeName: '머리방/코인워시 동부점',
    location: '부전동',
    description: '빨래방 / 코인워시 동부점 신설했습니다. 많은 이용 바랍니다.',
    commentCount: 11,
    likeCount: 5,
    commentUser: '코인님',
    comment: '처음 방문때 건조기도 무료로 서비스 해주셔서 너무 감사하네요. 앞으로도 자주 이용 합니다.',
    storeImages: [
      'https://picsum.photos/id/1041/200/100',
      'https://picsum.photos/id/1042/200/100',
    ],
  ),
];
