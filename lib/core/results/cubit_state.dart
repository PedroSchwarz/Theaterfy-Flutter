import 'package:freezed_annotation/freezed_annotation.dart';

part 'cubit_state.freezed.dart';

@freezed
class CubitState<T> with _$CubitState<T> {
  const factory CubitState.initial(T initialData) = Initial<T>;
  const factory CubitState.loading() = Loading<T>;
  const factory CubitState.success(T data) = Success<T>;
  const factory CubitState.error(String message) = Error<T>;
}
