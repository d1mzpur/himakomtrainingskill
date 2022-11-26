import 'dart:convert';

import 'package:dimaspurnomo/datalayers/entity/githubdetail_model.dart';
import 'package:dimaspurnomo/datalayers/entity/githublist_model.dart';
import 'package:http/http.dart' as http;

class NetworkService {
  var accessToken = "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";
  var baseUrl = "api.github.com";

  fecthGithubList() async {
    var path = "/users";

    try {
      var response = await http.get(Uri.https(baseUrl, path), headers: {
        "Accept": "application/vnd.github+json",
        "Authorization": "Bearer $accessToken",
      });
      var data = json.decode(response.body);

      if (response.statusCode >= 200) {
        var list = data.map((e) => GithubList.fromJson(e)).toList();
        return list;
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }

  fecthGithubDetail(String login) async {
    var path = "/users/$login";

    try {
      var response = await http.get(Uri.https(baseUrl, path), headers: {
        "Accept": "application/vnd.github+json",
        "Authorization": "Bearer $accessToken",
      });
      var data = json.decode(response.body);

      if (response.statusCode >= 200) {
        return GithubDetail.fromJson(data);
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }
}
