import 'dart:io';

import '../file_entity.dart';

abstract class FileService {
  Future<FileEntity> getFileEntity(String path);
  Future<File> getFile({required String path});
  Future<String> getBase64({required String path});
  Future<String> getMimeType({required String path});
  Future<String> getExtension({required String path});
  Future<String> getName({required String path});
  Future<int> getSize({required String path});
  Future<void> deleteFile({required String path});
  Future<File> saveFile(
      {required String path,
      required String name,
      required String extension,
      required String mimeType,
      required String base64});
}
