class SearchFilmModel {
  final String name;
  final String imageUrl;
  final String rank;
  final String description;
  final String year;

  SearchFilmModel({
    required this.name,
    required this.imageUrl,
    required this.rank,
    required this.description,
    required this.year,
  });

  factory SearchFilmModel.fromJson(json) {
    return SearchFilmModel(
      // from json api i want to get only these data and put it in the model
      name: json['name'],
      imageUrl: json['image'],
      rank: json['rank'],
      description: json['description'],
      year: json['year'],
    );
  }
}
