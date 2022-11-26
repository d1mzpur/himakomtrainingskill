import 'package:dimaspurnomo/datalayers/networkservice.dart';

class GithubUserControllers {
  NetworkService networkService = NetworkService();

  var githubList = [];

  fecthGithubList() async {
    var response = await networkService.fecthGithubList();

    try {
      githubList = response;
    } catch (e) {
      githubList = [];
    }
  }
}
