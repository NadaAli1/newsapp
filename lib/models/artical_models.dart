class Artical {
  final String title;
  final String describtion;
  final String imageUrl;
  final String titleUrl;

  Artical({this.describtion, this.imageUrl, this.title, this.titleUrl});

  factory Artical.fromJson(Map<String, dynamic> jsonData) {
    return Artical(
      title: jsonData['title'],
      describtion: jsonData['description'],
      imageUrl: jsonData['urlToImage'],
      titleUrl: jsonData['url'],
    );
  }
}
