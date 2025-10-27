class Artikel {
  final String title;
  final String description;
  final String urlToImage;
  final String url;

  Artikel({
    required this.title,
    required this.description,
    required this.urlToImage,
    required this.url,
  });

  factory Artikel.fromJson(Map<String, dynamic> json) {
    return Artikel(
      title: json['title'] ?? 'Tanpa Judul',
      description: json['description'] ?? 'Tidak ada deskripsi',
      urlToImage: json['urlToImage'] ??
          'https://upload.wikimedia.org/wikipedia/commons/a/ac/No_image_available.svg',
      url: json['url'] ?? '',
    );
  }
}
