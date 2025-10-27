import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/artikel_model.dart';

class ApiService {
    final String apiKey = '0ed365887a394f59ae8a8fa80dea6b18';
  final String apiUrl =
  'https://newsapi.org/v2/everything?q=technology&language=en&sortBy=publishedAt'

  Future<List<Artikel>> fetchArtikel() async {
    final response = await http.get(Uri.parse('$apiUrl&apiKey=$apiKey'));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final List articles = data['articles'];
      return articles.map((e) => Artikel.fromJson(e)).toList();
    } else {
      throw Exception('Gagal memuat artikel: ${response.statusCode}');
    }
  }
}
