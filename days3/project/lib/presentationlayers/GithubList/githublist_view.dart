import 'package:flutter/material.dart';
import 'package:project/datalayes/Service/GithubList/githublist_service.dart';
import 'package:project/presentationlayers/GithubDetailAccount/githubdetail_view.dart';
import 'package:project/presentationlayers/GithubSearch/githubsearch_view.dart';

class GithubListView extends StatefulWidget {
  const GithubListView({super.key});

  @override
  State<GithubListView> createState() => _GithubListViewState();
}

class _GithubListViewState extends State<GithubListView> {
  var githubList = [];
  GithubListService network = GithubListService();

  getData() async {
    githubList = await network.getData();
    setState(() {});
  }

  // getData() async {
  //   var accessToken = "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";

  //   try {
  //     var response =
  //         await http.get(Uri.parse('https://api.github.com/users'), headers: {
  //       "Accept": "application/vnd.github+json",
  //       "Authorization": "Bearer $accessToken",
  //     });

  //     var data = json.decode(response.body);

  //     if ((response.statusCode) >= 200 && (response.statusCode) < 404) {
  //       setState(() {
  //         githubList =
  //             data.map((element) => GithubList.fromJson(element)).toList();
  //       });
  //     } else {
  //       return null;
  //     }
  //   } on TimeoutException catch (_) {
  //     return null;
  //   } catch (e) {
  //     return null;
  //   }
  // }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GithubSearchView()),
                );
              },
              icon: Icon(Icons.search)),
        ],
        centerTitle: true,
        title: Text(
          "Github User",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: ListView.builder(
            itemCount: githubList.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Divider(
                    thickness: 1,
                  ),
                  ListTile(
                    leading: Image.network(githubList[index].avatarUrl),
                    title: Text("${githubList[index].login}"),
                    subtitle: Text("${githubList[index].url}"),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => GithubDetailView(
                                  login: '${githubList[index].login}',
                                )),
                      );
                    },
                  ),
                ],
              );
            }),
      ),
    );
  }
}
