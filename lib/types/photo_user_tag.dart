class PhotoUserTag{
  final String id;
  final String photoID;
  final String userID;
  final double confidence;
  final String taggedBy;
  final DateTime createdAt;

  PhotoUserTag({
    required this.id,
    required this.photoID,
    required this.userID,
    required this.confidence,
    required this.taggedBy,
    required this.createdAt,
  });
}