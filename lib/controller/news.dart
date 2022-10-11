import 'package:http/http.dart' as http;
import 'package:finance_mobile_app/models/article.dart';
import 'dart:convert';

import 'package:finance_mobile_app/secret.dart';

class News {

  List<Article> news  = [];

  Future<void> getNews() async{

    String url = "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=${apiKey}";

    var response = await http.get(Uri.parse(url));

    var jsonData = jsonDecode(response.body);

    if(jsonData['status'] == "ok"){
      jsonData["articles"].forEach((element){

        if(element['urlToImage'] != null && element['description'] != null){
          Article article = Article(
            title: element['title'],
            description: element['description'],
            urlToImage: element['urlToImage'],
            publshedAt: DateTime.parse(element['publishedAt']),
            content: element["content"],
            articleUrl: element["url"],
          );
          news.add(article);
        }

      });
    }


  }


}