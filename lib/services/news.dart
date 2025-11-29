import 'dart:convert';

import 'package:flutter_application_1/models/article_model.dart';
import 'package:http/http.dart' as http;

class News {
  List<ArticleModel> news = [];
  Future<void> getNews() async {
    String url =
        'https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=1f4567e5e26d4940a493c365b04da861';

    var response = await http.get(Uri.parse(url));
    var jsonData = jsonDecode(response.body);

    if (jsonData['status'] == 'ok') {
      jsonData['articles'].forEach((element) {
        if (element['urlToImage'] != null && element['description'] != null) {
          ArticleModel articleModel = ArticleModel(
            urlToImage: element['urlToImage'],
            desc: element['description'],
            title: element['title'],
          );
          news.add(articleModel);
        }
      });
    }
  }
}
