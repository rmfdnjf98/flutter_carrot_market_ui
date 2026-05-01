class Product {
  String title; // 제목: "니트 조끼"
  String author; // 저자: "author_1" (프로필 이름)
  String address; // 동: "우동"
  String urlToImage; // 상품 이미지 URL
  String publishedAt; // 올린 시간: "3시간 전"
  String price; // 가격: "35000"  (천단위 콤마는 NumberFormat 으로 입힘)
  int heartCount; // 관심 수
  int commentsCount; // 댓글 수

  Product({
    required this.title,
    required this.author,
    required this.address,
    required this.urlToImage,
    required this.publishedAt,
    required this.price,
    required this.heartCount,
    required this.commentsCount,
  });
}

List<Product> productList = [
  Product(
    title: '니트 조끼',
    author: 'author_1',
    address: '우동',
    urlToImage: 'https://picsum.photos/id/100/200/200',
    publishedAt: '3시간 전',
    price: '35000',
    heartCount: 8,
    commentsCount: 3,
  ),
  Product(
    title: '안락의자 팝니다 12',
    author: 'author_2',
    address: '좌동',
    urlToImage: 'https://picsum.photos/id/200/200/200',
    publishedAt: '1일 전',
    price: '15000',
    heartCount: 12,
    commentsCount: 1,
  ),
  Product(
    title: '캐릭터 머그잔',
    author: 'author_3',
    address: '중동',
    urlToImage: 'https://picsum.photos/id/300/200/200',
    publishedAt: '3시간 전',
    price: '18000',
    heartCount: 0,
    commentsCount: 1,
  ),
  Product(
    title: '유럽 여행',
    author: 'author_4',
    address: '우동',
    urlToImage: 'https://picsum.photos/id/400/200/200',
    publishedAt: '1일 전',
    price: '15000',
    heartCount: 11,
    commentsCount: 12,
  ),
  Product(
    title: '가죽 파우치',
    author: 'author_5',
    address: '우동',
    urlToImage: 'https://picsum.photos/id/500/200/200',
    publishedAt: '3일 전',
    price: '15000',
    heartCount: 4,
    commentsCount: 11,
  ),
  Product(
    title: '기저귀 파우치',
    author: 'author_6',
    address: '좌동',
    urlToImage: 'https://picsum.photos/id/600/200/200',
    publishedAt: '1주일 전',
    price: '95000',
    heartCount: 7,
    commentsCount: 4,
  ),
  Product(
    title: '노트북',
    author: 'author_7',
    address: '좌동',
    urlToImage: 'https://picsum.photos/id/700/200/200',
    publishedAt: '5일 전',
    price: '1150000',
    heartCount: 4,
    commentsCount: 9,
  ),
  Product(
    title: '미개봉 아이패드',
    author: 'author_8',
    address: '좌동',
    urlToImage: 'https://picsum.photos/id/800/200/200',
    publishedAt: '5일 전',
    price: '850000',
    heartCount: 8,
    commentsCount: 3,
  ),
];
