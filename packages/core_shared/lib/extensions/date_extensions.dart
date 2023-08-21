import 'package:core_shared/extensions/string_extensions.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension DateExtensions on DateTime {
  DateTime getDateOnly() => DateUtils.dateOnly(this);

  String getCompleteDate() =>
      _getFormatterFor(mask: 'EEEE, MMM d, yyyy').format(this).toCapitalized();

  DateFormat _getFormatterFor({required String mask}) => DateFormat(mask);
}
