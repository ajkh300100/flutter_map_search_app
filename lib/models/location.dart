class Location {
  final String name;
  final String category;
  final String roadAddress;
  final String link;

  Location({
    required this.name,
    required this.category,
    required this.roadAddress,
    required this.link,
  });

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      name: json['title'] ?? '',
      category: json['category'] ?? '',
      roadAddress: json['roadAddress'] ?? '',
      link: json['link'] ?? '',
    );
  }
}
