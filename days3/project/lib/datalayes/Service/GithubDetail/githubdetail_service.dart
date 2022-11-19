import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:project/datalayes/Entity/GithubDetail/githubdetail_model.dart';
import 'package:project/datalayes/Entity/GithubList/githublist_model.dart';

class GithubDetailService {
  getData(login) async {
    var accessToken = "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";

    try {
      var response = await http
          .get(Uri.parse('https://api.github.com/users/$login'), headers: {
        "Accept": "application/vnd.github+json",
        "Authorization": "Bearer $accessToken",
      });

      var data = json.decode(response.body);

      if ((response.statusCode) >= 200 && (response.statusCode) < 404) {
        return GithubDetail.fromJson(data);
        // return list;
      } else {
        return null;
      }
    } on TimeoutException catch (_) {
      return null;
    } catch (e) {
      return null;
    }
  }
}
