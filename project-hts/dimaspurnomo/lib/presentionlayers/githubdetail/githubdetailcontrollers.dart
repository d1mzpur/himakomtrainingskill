import 'package:dimaspurnomo/datalayers/networkservice.dart';

import '../../datalayers/entity/githubdetail_model.dart';

class GithubDetailControllers {
  NetworkService networkService = NetworkService();

  var githubDetail;

  fecthGithubDetail(String login) async {
    var response = await networkService.fecthGithubDetail(login);

    try {
      githubDetail = response;
    } catch (e) {
      githubDetail = [];
    }
  }
}
