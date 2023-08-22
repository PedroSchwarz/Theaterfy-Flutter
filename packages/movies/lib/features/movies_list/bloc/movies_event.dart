import 'package:freezed_annotation/freezed_annotation.dart';

part 'movies_event.freezed.dart';

@freezed
class MoviesEvent with _$MoviesEvent {
  factory MoviesEvent.started() = MoviesStarted;
  factory MoviesEvent.nextPage(int page) = MoviesNextPage;
}
