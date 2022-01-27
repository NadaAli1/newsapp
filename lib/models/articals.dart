class Articals {
  final List<dynamic> articals;

  Articals({this.articals});

  factory Articals.fromJson(Map<String, dynamic> jsonData) {
    return Articals(
      articals: jsonData['articles'],
    );
  }
}
