class NewsModel {
  final String? newsImg;
  final String? newsTitle;
  final String? newsSubTitle;

  const NewsModel(
      {required this.newsImg,
      required this.newsTitle,
      required this.newsSubTitle});

  // factory NewsModel.fromJson(json) {
  //   return NewsModel(
  //     newsImg: json["urlToImage"],
  //     newsTitle: json["title"],
  //     newsSubTitle: json["description"],
  //   );
  //}
}
