import 'dart:convert';
import 'package:newsify/modal/article.dart';
import 'package:http/http.dart' as http;

class News{
  List<ArticleModal> news = [];

  Future<void> getNews() async{
    String url = "Enter Your API";

    var response = await http.get(Uri.parse(url));

    var jsonData = jsonDecode(response.body);

    if(jsonData["status"] == "ok"){
      jsonData["articles"].forEach((element){
        if(element["urlToImage"]!=null && element["description"]!=null){
          ArticleModal articleModal = ArticleModal(
              title: element["title"],
              discription: element["description"],
              imgUrl: element["urlToImage"],
              url: element["url"]
          );
          news.add(articleModal);
        }
      });
    }
  }
}