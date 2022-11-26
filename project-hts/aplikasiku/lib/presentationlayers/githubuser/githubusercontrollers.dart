import 'package:aplikasiku/datalayers/entity/githubuser_model.dart';
import 'package:aplikasiku/datalayers/networkservice.dart';

class GithubUserControllers {
  NetworkService network = NetworkService();

  var githubList = [];

  fetchGithubList() async {
    var response = await network.fetchGithubList();
    print(response);

    try {
      githubList = response;
    } catch (e) {
      githubList = [];
    }
  }
}
