class HttpConfig {
  static String local = 'https://localhost:8081/';

  static final Map<String, dynamic> localhost = {
    "baseUrl": local,
    "connectTimeout": const Duration(seconds: 5000),
    "receiveTimeout": const Duration(seconds: 3000),
  };
}
