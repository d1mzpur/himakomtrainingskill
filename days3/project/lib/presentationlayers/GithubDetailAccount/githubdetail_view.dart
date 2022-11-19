import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:project/datalayes/Service/GithubDetail/githubdetail_service.dart';

class GithubDetailView extends StatefulWidget {
  const GithubDetailView({super.key, required this.login});

  final String login;

  @override
  State<GithubDetailView> createState() => _GithubDetailViewState();
}

class _GithubDetailViewState extends State<GithubDetailView> {
  var githubDetail;
  GithubDetailService network = GithubDetailService();

  getData() async {
    githubDetail = await network.getData(widget.login);
    print(githubDetail);
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail User"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Divider(
              thickness: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 10, bottom: 10),
              child: Row(
                children: [
                  Image.network(
                    "${githubDetail.avatarUrl}",
                    height: 72,
                    width: 72,
                  ),
                  Padding(padding: EdgeInsets.only(left: 20)),
                  Expanded(
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            githubDetail.login,
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 5)),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text(githubDetail.name)),
                        Padding(padding: EdgeInsets.only(top: 5)),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("${githubDetail.publicRepos} Repository"),
                              Padding(padding: EdgeInsets.only(left: 2)),
                              Text("${githubDetail.followers} Followers"),
                              Padding(padding: EdgeInsets.only(left: 2)),
                              Text("${githubDetail.following} Folowing"),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 10, bottom: 10),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  githubDetail.bio == null ? "" : githubDetail.bio,
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            Divider(
              thickness: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 10, bottom: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      githubDetail.email != null
                          ? Row(
                              children: [
                                Icon(Icons.email),
                                Padding(padding: EdgeInsets.only(left: 10)),
                                Text(githubDetail.email == null
                                    ? ""
                                    : githubDetail.email)
                              ],
                            )
                          : Visibility(
                              visible: false,
                              child: Text("Tidak ada"),
                            ),
                      githubDetail.email != null
                          ? Padding(padding: EdgeInsets.only(left: 10))
                          : Padding(padding: EdgeInsets.only(left: 0)),
                      githubDetail.company != null
                          ? Row(
                              children: [
                                Icon(Icons.business),
                                Padding(padding: EdgeInsets.only(left: 10)),
                                Text(githubDetail.company == null
                                    ? ""
                                    : githubDetail.company)
                              ],
                            )
                          : Visibility(
                              visible: false,
                              child: Text("Tidak ada"),
                            ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  Row(
                    children: [
                      githubDetail.blog != null
                          ? Row(
                              children: [
                                Icon(Icons.rss_feed),
                                Padding(padding: EdgeInsets.only(left: 10)),
                                Text(githubDetail.blog == null
                                    ? ""
                                    : githubDetail.blog)
                              ],
                            )
                          : Visibility(
                              visible: false,
                              child: Text("Tidak ada"),
                            ),
                      githubDetail.blog != null
                          ? Padding(padding: EdgeInsets.only(left: 10))
                          : Padding(padding: EdgeInsets.only(left: 0)),
                      githubDetail.twitterUsername != null
                          ? Row(
                              children: [
                                Icon(Icons.tag),
                                Padding(padding: EdgeInsets.only(left: 10)),
                                Text(githubDetail.twitterUsername == null
                                    ? ""
                                    : githubDetail.twitterUsername)
                              ],
                            )
                          : Visibility(
                              visible: false,
                              child: Text("Tidak ada"),
                            )
                    ],
                  )
                ],
              ),
            ),
            Divider(
              thickness: 5,
            ),
          ],
        ),
      ),
    );
  }
}
