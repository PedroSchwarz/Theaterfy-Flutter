import 'package:dartz/dartz.dart';
import 'package:theaterfy/core/errors/failure.dart';

abstract class UseCase<Type, Param> {
  Either<Failure, Type> call(Param param);
}

abstract class FutureUseCase<Type, Param> {
  Future<Either<Failure, Type>> call(Param param);
}

abstract class EmptyParam {}

abstract class Success {}
