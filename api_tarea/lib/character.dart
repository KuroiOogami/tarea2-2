class Character {
  final int id;
  final String name;
  final String ki;
  final String maxKi;
  final String race;
  final String gender;
  final String description;
  final String image;
  final String affiliation;
  final dynamic deletedAt; // Puede ser null

  Character({
    required this.id,
    required this.name,
    required this.ki,
    required this.maxKi,
    required this.race,
    required this.gender,
    required this.description,
    required this.image,
    required this.affiliation,
    this.deletedAt,
  });

  factory Character.fromJson(Map<String, dynamic> json) {
    return Character(
      id: json['id'] ?? 0,
      name: json['name'] ?? 'Unknown',
      ki: json['ki'] ?? 'Unknown',
      maxKi: json['maxKi'] ?? 'Unknown',
      race: json['race'] ?? 'Unknown',
      gender: json['gender'] ?? 'Unknown',
      description: json['description'] ?? 'No description available',
      image: json['image'] ?? 'https://via.placeholder.com/150',
      affiliation: json['affiliation'] ?? 'Unknown',
      deletedAt: json['deletedAt'],
    );
  }
}
