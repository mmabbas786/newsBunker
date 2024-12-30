import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:newsapp/Models/newsmodel.dart';

class NewsController extends GetxController {
  RxList<NewsModel> trendingNewsList = <NewsModel>[].obs;
  RxList<NewsModel> newsForYouList = <NewsModel>[].obs;
  // RxList<NewsModel> newsForYou5 = <NewsModel>[].obs;

  @override
  void onInit() async {
    super.onInit();
    getNewsForYou();
    getTrendingNews();
  }

  Future<void> getTrendingNews() async {
    var baseURL =
        "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=20ff524905044075954db474db69afa0";

    try {
      var response = await http.get(Uri.parse(baseURL));
      print(response);
      if (response.statusCode == 200) {
        print(response.body);
        var body = jsonDecode(response.body);
        var articles = body["articles"];
        for (var news in articles) {
          trendingNewsList.add(NewsModel.fromJson(news));
        }
      } else {
        print("Something Went Wrong");
      }
    } catch (ex) {
      print(ex);
    }
  }

  Future<void> getNewsForYou() async {
    var baseURL =
        "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=20ff524905044075954db474db69afa0";

    try {
      var response = await http.get(Uri.parse(baseURL));
      print(response);
      if (response.statusCode == 200) {
        print(response.body);
        var body = jsonDecode(response.body);
        var articles = body["articles"];
        for (var news in articles) {
          newsForYouList.add(NewsModel.fromJson(news));
        }
        // newsForYou5.value = newsForYouList.sublist(0, 5).obs;
      } else {
        print("Something Went Wrong");
      }
    } catch (ex) {
      print(ex);
    }
  }
}
