import 'dart:convert';

import 'package:http/http.dart';
import 'package:zees/API/api_client.dart';
import 'package:zees/moviModel.dart';

class MoviesApi{
  ApiClient apiClient = ApiClient();

  Future<MoviModel> getTrendingMovie() async{
    Response response = await apiClient.invokeApi(trendingpath, 'GET', null);
    return MoviModel.fromJson(jsonDecode(response.body));
  }
}