import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_event.freezed.dart';

@freezed
class SearchEvent with _$SearchEvent {
  factory SearchEvent.queried(String query) = SearchQueried;
  factory SearchEvent.nextPage(int page) = SearchNextPage;
}
