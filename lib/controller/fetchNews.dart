//https://newsapi.org/v2/top-headlines?country=in&apiKey=557368e695b24ebaa8eff835aa3f15a9
import 'dart:math';

import 'package:http/http.dart';
import 'dart:convert';

import 'package:news_app/model/newsArt.dart';

class FetchNews {
  static List sourcesId = [
    "abc-news",
    "bbc-news",
    "bbc-sport",
    "business-insider",
    "engadget",
    "entertainment-weekly",
    "espn",
    "espn-cric-info",
    "financial-post",
    "fox-news",
    "fox-sports",
    "globo",
    "google-news",
    "google-news-in",
    "medical-news-today",
    "national-geographic",
    "news24",
    "new-scientist",
    "new-york-magazine",
    "next-big-future",
    "techcrunch",
    "techradar",
    "the-hindu",
    "the-wall-street-journal",
    "the-washington-times",
    "time",
    "usa-today",
  ];
  static Future<NewsArt> fetchNews() async {
    final random = new Random();
    var sourceID = sourcesId[random.nextInt(sourcesId.length)];
    Response response = await get(Uri.parse(
        "https://newsapi.org/v2/top-headlines?sources=$sourcesId&apiKey=557368e695b24ebaa8eff835aa3f15a9&language=en"));

    Map body_data = jsonDecode(response.body);
    List articles = body_data["articles"];

    print("***************************************************************");
    print(body_data);

    final random_article = new Random();
    var article = articles[random.nextInt(articles.length)];

    return NewsArt.fromAPItoApp(article);
  }
}
