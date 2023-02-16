import 'dart:convert';

import 'package:http/http.dart' as http;

void main(List<String> args) async{
  String host = "api.chucknorris.io";
  String path = "/jokes/random";
  List<Joke> jokes = [];
  int cantidad = 50;
  for (int i = 0; i < cantidad; i++) {
    await getJoke(host, path).then((result) {
      String body = result.body;
      var resultJson = jsonDecode(body);
      jokes.add(Joke.fromJson(resultJson));   
    });
  }
  print(jokes);
}

Future<http.Response> getJoke(String host, String path) async {
  Uri url = Uri.http(host, path);
  var result = await http.get(url);
  return result;
}

class Joke {
  late String created_at;
  late String icon_url;
  late String id;
  late String updated_at;
  late String url;
  late String value;

  Joke.fromJson(Map<String, dynamic> json) {
    this.created_at = json["created_at"];
    this.icon_url = json["icon_url"];
    this.id = json["id"];
    this.updated_at = json["updated_at"];
    this.url = json["url"];
    this.value = json["value"];
  }
  @override
  String toString() {
    return '\n{ ${this.created_at}, ${this.icon_url}, ${this.id}, ${this.updated_at},, ${this.url}, ${this.value} }\n';
  }
}
