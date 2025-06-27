import 'dart:convert';

import 'package:newsify/modal/catagory.dart';
import 'package:newsify/modal/show_cate.dart';
import 'package:http/http.dart' as http;

class ShowCateNews{
  List<CategoryModal> categories = [];

  Future<void> getCategory(String category) async{
    String url = "Enter Your API";

    var response = await http.get(Uri.parse(url));

    var jsonData = jsonDecode(response.body);

    if(jsonData["status"] == "ok"){
      jsonData["articles"].forEach((element){
        if(element["urlToImage"]!=null && element["description"]!=null){
          CategoryModal showCate = CategoryModal(
              catagoryName: element["title"],
              discription: element["description"],
              catagoryImage: element["urlToImage"],
            url: element['url']
          );
          categories.add(showCate);
        }
      });
    }
  }

}