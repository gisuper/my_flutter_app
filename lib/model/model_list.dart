class GameList {
  List<Payload> payload;
  bool success;

  GameList({this.payload, this.success});

  GameList.fromJson(Map<String, dynamic> json) {
    if (json['payload'] != null) {
      payload = new List<Payload>();
      json['payload'].forEach((v) {
        payload.add(new Payload.fromJson(v));
      });
    }
    success = json['success'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.payload != null) {
      data['payload'] = this.payload.map((v) => v.toJson()).toList();
    }
    data['success'] = this.success;
    return data;
  }
}

class Payload {
  String gameDesc;
  String gameHome;
  String gameName;
  String gameTitle;

  Payload({this.gameDesc, this.gameHome, this.gameName, this.gameTitle});

  Payload.fromJson(Map<String, dynamic> json) {
    gameDesc = json['gameDesc'];
    gameHome = json['gameHome'];
    gameName = json['gameName'];
    gameTitle = json['gameTitle'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['gameDesc'] = this.gameDesc;
    data['gameHome'] = this.gameHome;
    data['gameName'] = this.gameName;
    data['gameTitle'] = this.gameTitle;
    return data;
  }
}