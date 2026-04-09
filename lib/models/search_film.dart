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

  // factory SearchFilmModel.fromJson(json) {
  //   return SearchFilmModel(
  //     // from json api i want to get only these data and put it in the model
  //     name: json['name'],
  //     imageUrl: json['image'],
  //     rank: json['rank'],
  //     description: json['description'],
  //     year: json['year'],
  //   );
  // }

  // factory SearchFilmModel.fromJson(Map<String, dynamic> json) {
  //   return SearchFilmModel(
  //     name: json['name'] ?? 'Unknown Name',
  //     imageUrl: json['image'] ?? '', // Match 'image' key from API
  //     rank: json['rank']?.toString() ?? '0', // Ensure it's a string
  //     description: json['description'] ?? '',
  //     year: json['year']?.toString() ?? '', // Ensure it's a string
  //   );
  // }
}
