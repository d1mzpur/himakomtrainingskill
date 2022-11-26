import 'package:dimaspurnomo/datalayers/networkservice.dart';
import 'package:dimaspurnomo/presentionlayers/githubuser/githubusercontrollers.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../githubdetail/githubdetail.dart';

class GithubUser extends StatefulWidget {
  const GithubUser({super.key});

  @override
  State<GithubUser> createState() => _GithubUserState();
}

class _GithubUserState extends State<GithubUser> {
  GithubUserControllers controllers = GithubUserControllers();
  NetworkService networkService = NetworkService();

  getdata() async {
    await controllers.fecthGithubList();
    setState(() {});
  }

  @override
  void initState() {
    getdata();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              controllers.githubList.clear();
              controllers.fecthGithubList();
            },
            icon: Icon(Icons.search),
          )
        ],
        title: Text("Github User"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Column(
              children: [
                Divider(
                  thickness: 1,
                ),
                ListTile(
                  leading:
                      Image.network(controllers.githubList[index].avatarUrl),
                  title: Text(controllers.githubList[index].login),
                  subtitle: Text(controllers.githubList[index].url),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => GithubDetail(
                                  login: controllers.githubList[index].login,
                                )));
                  },
                )
              ],
            );
          },
          itemCount: controllers.githubList.length,
        ),
      ),
    );
  }
}
