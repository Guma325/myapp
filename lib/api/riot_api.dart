import 'package:http/http.dart' as http;
import 'dart:convert';

class RiotApi {
  String url = "https://br1.api.riotgames.com/";
  String urlA = "https://americas.api.riotgames.com/";
  String apikey = "RGAPI-900f42aa-a3f7-4fe5-89b7-441e4c06e542";
  RiotApi();

  Future<dynamic> invokeService(String service, String requestInfo) async {
    String serviceEndPoint = "";
    switch (service) {
      case "GET_PUUID_BYNAME":
        serviceEndPoint = "${url}lol/summoner/v4/summoners/by-name/$requestInfo?api_key=$apikey";
        break;
      case "GET_SUMMONERMASTERY_BYPUUID":
        serviceEndPoint = "${url}lol/champion-mastery/v4/champion-masteries/by-puuid/$requestInfo?api_key=$apikey";
        break;
      case "GET_MATCHS_BYPUUID":
        serviceEndPoint = "${urlA}lol/match/v5/matches/by-puuid/$requestInfo/ids?start=0&count=3&api_key=$apikey";
        break;
      case "GET_MATCH_BYMATCHID":
        serviceEndPoint = "${urlA}lol/match/v5/matches/$requestInfo?api_key=$apikey";
        break;
    }
    final response = await http.get(Uri.parse(serviceEndPoint));
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      return response.statusCode;
    }
  }
}
