import 'dart:convert';

import 'package:newscloud/models/artical_models.dart';
import 'package:http/http.dart' as http;
import 'package:newscloud/models/articals.dart';

class NewsApi {
  final String apiKey = '1279b646795d465ba64f4287be7d51ec';

  Future<List<Artical>> fetchArticals() async {
    try {
      http.Response response = await http.get(Uri.parse(
          'https://newsapi.org/v2/top-headlines?country=eg&apiKey=$apiKey'));

      if (response.statusCode == 200) {
        String data = response.body;
        var jsonData = jsonDecode(data);
        Articals articals = Articals.fromJson(jsonData);
        List<Artical> articalsList =
            articals.articals.map((e) => Artical.fromJson(e)).toList();
        return articalsList;
      } else {
        print('status Code =${response.statusCode}');
      }
    } catch (e) {
      print(e);
    }
  }

  Future<List<Artical>> fetchArticalsByCategory(String category) async {
    try {
      http.Response response = await http.get(Uri.parse(
          'https://newsapi.org/v2/top-headlines?country=eg&category=$category&apiKey=$apiKey'));

      if (response.statusCode == 200) {
        String data = response.body;
        var jsonData = jsonDecode(data);
        Articals articals = Articals.fromJson(jsonData);
        List<Artical> articalsList =
            articals.articals.map((e) => Artical.fromJson(e)).toList();
        return articalsList;
      } else {
        print('status Code =${response.statusCode}');
      }
    } catch (e) {
      print(e);
    }
  }
}
