class NewsArt {
  String imgUrl;
  String newsHead;
  String newsDesc;
  String newsCnt;
  String newsUrl;

  NewsArt({
    required this.imgUrl,
    required this.newsHead,
    required this.newsDesc,
    required this.newsCnt,
    required this.newsUrl,
  });

  static NewsArt fromAPItoApp(Map<String, dynamic> article) {
    return NewsArt(
        imgUrl: article["urlToImage"] ??
            "https://img.freepik.com/free-vector/breaking-news-concept_23-2148514216.jpg",
        newsHead: article["title"] ?? "No title found 😞",
        newsDesc: article["description"] ?? "No description found 😞",
        newsCnt: article["content"] ?? "No content found 😞",
        newsUrl: article["url"] ?? "No url found 😞");
  }
}
