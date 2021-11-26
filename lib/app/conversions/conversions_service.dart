import 'package:dartz/dartz.dart';
import 'package:intl/intl.dart';
import 'package:theaterfy/core/errors/failure.dart';

class ConversionsService {
  Either<Failure, String> formatDate(String format, DateTime date) {
    try {
      final value = DateFormat(format).format(date);
      return Right(value);
    } catch (e) {
      return Left(ConversionFailure());
    }
  }
}
