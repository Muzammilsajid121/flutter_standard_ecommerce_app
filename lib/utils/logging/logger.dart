import 'package:logger/logger.dart';

class TLogger {
  static final Logger _logger = Logger(
    printer: PrettyPrinter(),
    //customize  the log based on your neeed
  );

  static void debug(String message) {
    _logger.d(message);
  }

  static void info(String massage) {
    _logger.i(massage);
  }

  static void warning(String massage) {
    _logger.w(massage);
  }

  static void error(dynamic massage) {
    _logger.e(massage, error: error, stackTrace: StackTrace.current);
  }
}