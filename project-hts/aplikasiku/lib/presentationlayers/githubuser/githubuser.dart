import 'package:aplikasiku/presentationlayers/githubuser/githubusercontrollers.dart';
import 'package:flutter/material.dart';

class GithubUser extends StatefulWidget {
  const GithubUser({super.key});

  @override
  State<GithubUser> createState() => _GithubUserState();
}

class _GithubUserState extends State<GithubUser> {
  GithubUserControllers controllers = GithubUserControllers();

  getData() {
    controllers.fetchGithubList();
    setState(() {});
  }

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
            onPressed: () {},
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
                  onTap: () {},
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
