class Photo {
  final String id;
  final String filePath;
  final String thumbnailPath;
  final DateTime createdAt;
  final DateTime takenAt;
  final String? sessionID;
  final bool isDeleted;

  Photo({
    required this.id,
    required this.filePath,
    required this.thumbnailPath,
    required this.createdAt,
    required this.takenAt,
    this.sessionID,
    this.isDeleted = false,
  });
}