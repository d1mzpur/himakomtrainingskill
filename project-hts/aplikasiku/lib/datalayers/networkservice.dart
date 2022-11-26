import 'dart:convert';

import 'package:aplikasiku/datalayers/entity/githubuser_model.dart';
import 'package:http/http.dart' as http;

class NetworkService {
  var accessToken = "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";
  var baseUrl = "api.github.com";

  fetchGithubList() async {
    var path = "/users";

    try {
      var response = await http.get(Uri.https(baseUrl, path), headers: {
        "Accept": "application/vnd.github+json",
        "Authorization": "Bearer $accessToken"
      });

      var data = json.decode(response.body);
      print(data);

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
}
