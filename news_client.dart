import 'package:dio/dio.dart';

class NewsClient {
  Dio dio = Dio();
  getNewsDataFromAPI() async {
    String newsURL =
        "https://newsapi.org/v2/top-headlines?country=us&apiKey=3e7b2b9b43d74ed0bd8576b2dbd3c8fc";
    try {
      var response = await dio.get(newsURL);
      print("this is the news data from API ${response.data}");
      return response.data;
    } catch (error) {
      print("error is fetched in API");
    }
  }
}
