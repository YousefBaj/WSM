import 'dart:convert';

import 'package:http/http.dart' as http;

class gameAPI {
//  Future<List<Game>> fetChMovieByCategoryId(String id) async {
//    String baseUrl = "https://codestomp.com//CodeStompApps//test_movies//";
//    print(baseUrl);
//    String movieApiUrl =
//        "https://codestomp.com/CodeStompApps/test_movies/movies/view-all.php?page=3";
//    var response = await http.get(movieApiUrl);
//
//    List<Game> games = List<Game>();
//    if (response.statusCode == 200) {
//      var jsonData = jsonDecode(response.body);
//      var data = jsonData["data"];
//
//      for (var item in data) {
//        Game game = Game(
//          question: item["name"].toString(),
//          image: item["desc"].toString(),
//
//        );
//        games.add(game);
//      }
//    }
//    return games;
//  }

  Future postTest() async {
    var url = "https://jsonplaceholder.typicode.com/posts";
    var url1 = "https://wsmai.azurewebsites.net/api";
    var resBody = {};

    resBody["ymin"] = "100";
    resBody["ymax"] = "100";
    resBody["xmin"] = "100";
    resBody["xmax"] = "100";
    resBody["name"] = "Yousef";

    String str = json.encode(resBody);
//    print(str);
    var response = await http.post(url, body: resBody);
    print(response.body);
  }
}
