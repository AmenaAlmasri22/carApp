import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

/// Default date format pattern.
const String dateTimeFormatPattern = 'dd/MM/yyyy';

/// Extension on [DateTime] for custom formatting.
extension DateTimeExtension on DateTime {
  /// Formats a [DateTime] object to a string using the given [pattern] and [locale].
  /// 
  /// If [locale] is provided and not empty, it initializes the date formatting for the locale.
  /// 
  /// - [pattern]: The format pattern to use (default is 'dd/MM/yyyy').
  /// - [locale]: The locale for formatting (optional).
  String format({
    String pattern = dateTimeFormatPattern,
    String? locale,
  }) {
    if (locale != null && locale.isNotEmpty) {
      initializeDateFormatting(locale);
    }
    return DateFormat(pattern, locale).format(this);
  }
}
