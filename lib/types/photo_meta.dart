class PhotoMeta {
  final String id;
  final String title;
  final int width;
  final int height;
  final int fileSize;
  final DateTime importedAt;

  PhotoMeta({
    required this.id,
    required this.title,
    required this.width,
    required this.height,
    required this.fileSize,
    required this.importedAt,
  });
}