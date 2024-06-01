class HttpConfig {
  static String local = 'http://192.168.0.12:8081';

  static final Map<String, dynamic> localhost = {
    "baseUrl": local,
    "connectTimeout": const Duration(seconds: 3000),
    "receiveTimeout": const Duration(seconds: 3000),
  };
}
