import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:project/datalayes/Entity/GithubSearch/githubsearch_model.dart';
import 'package:project/datalayes/Service/GithubSearch/githubsearch_service.dart';

class GithubSearchView extends StatefulWidget {
  const GithubSearchView({super.key});

  @override
  State<GithubSearchView> createState() => _GithubSearchViewState();
}

class _GithubSearchViewState extends State<GithubSearchView> {
  final TextEditingController _controller = TextEditingController();

  GithubSearchService network = GithubSearchService();

  var githubSearch;

  getData(login) async {
    githubSearch = await network.getData(login);
    print(githubSearch);
    setState(() {});
  }

  // Future<GithubSearch?> getData(login) async {
  //   var accessToken = "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";

  //   try {
  //     var response = await http.get(
  //         Uri.parse('https://api.github.com/search/users?q=$login'),
  //         headers: {
  //           "Accept": "application/vnd.github+json",
  //           "Authorization": "Bearer $accessToken",
  //         });

  //     var data = jsonDecode(response.body);

  //     if ((response.statusCode) >= 200 && (response.statusCode) < 404) {
  //       setState(() {
  //         githubSearch =
  //             data.map((element) => GithubSearch.fromJson(element)).toList();
  //         return githubSearch;
  //       });
  //       ;
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Github Search"),
        actions: [
          IconButton(
              onPressed: () {
                print(githubSearch);
              },
              icon: Icon(Icons.abc))
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                controller: _controller,
                onSubmitted: (value) {
                  getData(value);
                },
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: githubSearch == null ? 0 : githubSearch.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Image.network(githubSearch[index]['avatar_url']),
                      title: Text("${githubSearch[index]['login']}"),
                      subtitle: Text("${githubSearch[index]['url']}"),
                      onTap: () {},
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
