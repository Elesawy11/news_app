import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/models/artical_model.dart';

class NewsServices {
  Future<List<ArticalModel>> getNews() async {
    try {
  Uri url = Uri.parse(
      'https://newsapi.org/v2/top-headlines?country=us&apiKey=f34618303a114eb7a83db0a02c3af479');
  
  http.Response response = await http.get(url);
  
  if (response.statusCode == 200) {
    Map<String,dynamic> data = jsonDecode(response.body);
    List<dynamic> articals = data['articles'];
    List<ArticalModel> articalList = [];
    for (var artical in articals) {
      ArticalModel articalModel = ArticalModel.fromJson(artical);
      articalList.add(articalModel);
    }
    return articalList;
  } else {
    var data = jsonDecode(response.body);
    throw Exception(data['message']);
  }
} on Exception catch (e) {
  print((e.toString()));
  return [];
}
  }
}
