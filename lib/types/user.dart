class User {
  final String id;
  final String name;
  final String? faceImagePath;
  final DateTime createdAt;

  User({
    required this.id,
    required this.name,
    this.faceImagePath,
    required this.createdAt,
  });
}