import 'dart:convert';

import 'package:http/http.dart';

import '../model_class/project_amazon.dart';
import 'api_clint.dart';

class amazon1 {
  ApiClient apiClient = ApiClient();

  Future<ProjectAmazon> getAnime() async {
    String trendingpath = 'https://real-time-amazon-data.p.rapidapi.com/search?query=Phone&page=1&country=US&category_id=aps';
    var body = {};
    Response response = await apiClient.invokeAPI(trendingpath, 'GET', body);

    return ProjectAmazon.fromJson(jsonDecode(response.body));
  }
}
