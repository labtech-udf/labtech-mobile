import 'package:intl/intl.dart';

class Formatters {
  static String formatDate(String date, String format) {
    try {
      return DateFormat(format).format(DateTime.parse(date));
    } catch (e) {
      return date;
    }
  }
}
