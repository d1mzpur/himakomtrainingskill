import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:project/datalayes/Entity/GithubSearch/githubsearch_model.dart';

class GithubSearchService {
  getData(login) async {
    var accessToken = "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";

    try {
      var response = await http.get(
          Uri.parse('https://api.github.com/search/users?q=$login'),
          headers: {
            "Accept": "application/vnd.github+json",
            "Authorization": "Bearer $accessToken",
          });

      var data = jsonDecode(response.body);
      print(response.body);
      if ((response.statusCode) >= 200 && (response.statusCode) < 404) {
        // var list = data.map((e) => GithubSearch.fromJson(e)).toList();
        print("Masuk1");
        return data['items'];
      } else {
        print("Masuk2");
        return null;
      }
    } on TimeoutException catch (_) {
      print("Masuk3");
      return null;
    } catch (e) {
      print("Masuk4");
      return null;
    }
  }
}
