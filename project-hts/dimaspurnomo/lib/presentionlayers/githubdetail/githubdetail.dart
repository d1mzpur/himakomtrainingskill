import 'package:dimaspurnomo/presentionlayers/githubdetail/githubdetailcontrollers.dart';
import 'package:flutter/material.dart';

class GithubDetail extends StatefulWidget {
  const GithubDetail({super.key, required this.login});

  final String login;

  @override
  State<GithubDetail> createState() => _GithubDetailState();
}

class _GithubDetailState extends State<GithubDetail> {
  GithubDetailControllers controllers = GithubDetailControllers();

  getdata() async {
    await controllers.fecthGithubDetail(widget.login);
    setState(() {});
  }

  @override
  void initState() {
    getdata();
    super.initState();
  }

  @override
  void dispose() {
    controllers.fecthGithubDetail(widget.login);
    // TODO: implement dispose
    super.dispose();
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
                    controllers.githubDetail.avatarUrl,
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
                            controllers.githubDetail.login,
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 5)),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text(controllers.githubDetail.name)),
                        Padding(padding: EdgeInsets.only(top: 5)),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                  "${controllers.githubDetail.publicRepos} Repository"),
                              Padding(padding: EdgeInsets.only(left: 2)),
                              Text(
                                  "${controllers.githubDetail.followers} Followers"),
                              Padding(padding: EdgeInsets.only(left: 2)),
                              Text(
                                  "${controllers.githubDetail.following} Folowing"),
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
                  controllers.githubDetail.bio == null
                      ? ""
                      : controllers.githubDetail.bio,
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
                      controllers.githubDetail.email != null
                          ? Row(
                              children: [
                                Icon(Icons.email),
                                Padding(padding: EdgeInsets.only(left: 10)),
                                Text(controllers.githubDetail.email == null
                                    ? ""
                                    : controllers.githubDetail.email)
                              ],
                            )
                          : Visibility(
                              visible: false,
                              child: Text("Tidak ada"),
                            ),
                      controllers.githubDetail.email != null
                          ? Padding(padding: EdgeInsets.only(left: 10))
                          : Padding(padding: EdgeInsets.only(left: 0)),
                      controllers.githubDetail.company != null
                          ? Row(
                              children: [
                                Icon(Icons.business),
                                Padding(padding: EdgeInsets.only(left: 10)),
                                Text(controllers.githubDetail.company == null
                                    ? ""
                                    : controllers.githubDetail.company)
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
                      controllers.githubDetail.blog != null
                          ? Row(
                              children: [
                                Icon(Icons.rss_feed),
                                Padding(padding: EdgeInsets.only(left: 10)),
                                Text(controllers.githubDetail.blog == null
                                    ? ""
                                    : controllers.githubDetail.blog)
                              ],
                            )
                          : Visibility(
                              visible: false,
                              child: Text("Tidak ada"),
                            ),
                      controllers.githubDetail.blog != null
                          ? Padding(padding: EdgeInsets.only(left: 10))
                          : Padding(padding: EdgeInsets.only(left: 0)),
                      controllers.githubDetail.twitterUsername != null
                          ? Row(
                              children: [
                                Icon(Icons.tag),
                                Padding(padding: EdgeInsets.only(left: 10)),
                                Text(controllers.githubDetail.twitterUsername ==
                                        null
                                    ? ""
                                    : controllers.githubDetail.twitterUsername)
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
