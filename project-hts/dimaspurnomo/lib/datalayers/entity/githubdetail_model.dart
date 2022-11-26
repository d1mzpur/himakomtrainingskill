class GithubDetail {
  String? login;
  int? id;
  String? nodeId;
  String? avatarUrl;
  String? gravatarId;
  String? url;
  String? htmlUrl;
  String? followersUrl;
  String? followingUrl;
  String? gistsUrl;
  String? starredUrl;
  String? subscriptionsUrl;
  String? organizationsUrl;
  String? reposUrl;
  String? eventsUrl;
  String? receivedEventsUrl;
  String? type;
  bool? siteAdmin;
  String? name;
  dynamic company;
  String? blog;
  String? location;
  String? email;
  dynamic hireable;
  dynamic bio;
  dynamic twitterUsername;
  int? publicRepos;
  int? publicGists;
  int? followers;
  int? following;
  String? createdAt;
  String? updatedAt;
  int? privateGists;
  int? totalPrivateRepos;
  int? ownedPrivateRepos;
  int? diskUsage;
  int? collaborators;
  bool? twoFactorAuthentication;
  Plan? plan;

  GithubDetail(
      {this.login,
      this.id,
      this.nodeId,
      this.avatarUrl,
      this.gravatarId,
      this.url,
      this.htmlUrl,
      this.followersUrl,
      this.followingUrl,
      this.gistsUrl,
      this.starredUrl,
      this.subscriptionsUrl,
      this.organizationsUrl,
      this.reposUrl,
      this.eventsUrl,
      this.receivedEventsUrl,
      this.type,
      this.siteAdmin,
      this.name,
      this.company,
      this.blog,
      this.location,
      this.email,
      this.hireable,
      this.bio,
      this.twitterUsername,
      this.publicRepos,
      this.publicGists,
      this.followers,
      this.following,
      this.createdAt,
      this.updatedAt,
      this.privateGists,
      this.totalPrivateRepos,
      this.ownedPrivateRepos,
      this.diskUsage,
      this.collaborators,
      this.twoFactorAuthentication,
      this.plan});

  GithubDetail.fromJson(Map<String, dynamic> json) {
    login = json["login"];
    id = json["id"];
    nodeId = json["node_id"];
    avatarUrl = json["avatar_url"];
    gravatarId = json["gravatar_id"];
    url = json["url"];
    htmlUrl = json["html_url"];
    followersUrl = json["followers_url"];
    followingUrl = json["following_url"];
    gistsUrl = json["gists_url"];
    starredUrl = json["starred_url"];
    subscriptionsUrl = json["subscriptions_url"];
    organizationsUrl = json["organizations_url"];
    reposUrl = json["repos_url"];
    eventsUrl = json["events_url"];
    receivedEventsUrl = json["received_events_url"];
    type = json["type"];
    siteAdmin = json["site_admin"];
    name = json["name"];
    company = json["company"];
    blog = json["blog"];
    location = json["location"];
    email = json["email"];
    hireable = json["hireable"];
    bio = json["bio"];
    twitterUsername = json["twitter_username"];
    publicRepos = json["public_repos"];
    publicGists = json["public_gists"];
    followers = json["followers"];
    following = json["following"];
    createdAt = json["created_at"];
    updatedAt = json["updated_at"];
    privateGists = json["private_gists"];
    totalPrivateRepos = json["total_private_repos"];
    ownedPrivateRepos = json["owned_private_repos"];
    diskUsage = json["disk_usage"];
    collaborators = json["collaborators"];
    twoFactorAuthentication = json["two_factor_authentication"];
    plan = json["plan"] == null ? null : Plan.fromJson(json["plan"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["login"] = login;
    _data["id"] = id;
    _data["node_id"] = nodeId;
    _data["avatar_url"] = avatarUrl;
    _data["gravatar_id"] = gravatarId;
    _data["url"] = url;
    _data["html_url"] = htmlUrl;
    _data["followers_url"] = followersUrl;
    _data["following_url"] = followingUrl;
    _data["gists_url"] = gistsUrl;
    _data["starred_url"] = starredUrl;
    _data["subscriptions_url"] = subscriptionsUrl;
    _data["organizations_url"] = organizationsUrl;
    _data["repos_url"] = reposUrl;
    _data["events_url"] = eventsUrl;
    _data["received_events_url"] = receivedEventsUrl;
    _data["type"] = type;
    _data["site_admin"] = siteAdmin;
    _data["name"] = name;
    _data["company"] = company;
    _data["blog"] = blog;
    _data["location"] = location;
    _data["email"] = email;
    _data["hireable"] = hireable;
    _data["bio"] = bio;
    _data["twitter_username"] = twitterUsername;
    _data["public_repos"] = publicRepos;
    _data["public_gists"] = publicGists;
    _data["followers"] = followers;
    _data["following"] = following;
    _data["created_at"] = createdAt;
    _data["updated_at"] = updatedAt;
    _data["private_gists"] = privateGists;
    _data["total_private_repos"] = totalPrivateRepos;
    _data["owned_private_repos"] = ownedPrivateRepos;
    _data["disk_usage"] = diskUsage;
    _data["collaborators"] = collaborators;
    _data["two_factor_authentication"] = twoFactorAuthentication;
    if (plan != null) {
      _data["plan"] = plan?.toJson();
    }
    return _data;
  }
}

class Plan {
  String? name;
  int? space;
  int? collaborators;
  int? privateRepos;

  Plan({this.name, this.space, this.collaborators, this.privateRepos});

  Plan.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    space = json["space"];
    collaborators = json["collaborators"];
    privateRepos = json["private_repos"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["space"] = space;
    _data["collaborators"] = collaborators;
    _data["private_repos"] = privateRepos;
    return _data;
  }
}
