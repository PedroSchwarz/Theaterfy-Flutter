import 'package:intl/intl.dart';

extension CurrencyExtensions on double {
  String getCurrency({required String locale}) {
    final formatter = NumberFormat.simpleCurrency(locale: locale);
    return formatter.format(this);
  }
}

extension CurrencyExtension on String {
  double getRawValue({required String locale}) {
    final formatter = NumberFormat.simpleCurrency(locale: locale);
    return formatter.parse(this).toDouble();
  }
}
