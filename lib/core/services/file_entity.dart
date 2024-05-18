class FileEntity {
  final String path;
  final String name;
  final String extension;
  final String mimeType;
  final int size;
  final String? base64;

  FileEntity(
      {required this.path,
      required this.name,
      required this.extension,
      required this.mimeType,
      required this.size,
      this.base64});
}
