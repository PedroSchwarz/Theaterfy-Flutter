import 'package:json_annotation/json_annotation.dart';

part 'pagination_response.g.dart';

@JsonSerializable(createToJson: false, genericArgumentFactories: true)
class PaginationResponse<T> {
  @JsonKey(name: 'total_pages')
  final int totalPages;
  @JsonKey(name: 'page')
  final int currentPage;
  final List<T> results;

  PaginationResponse({
    required this.totalPages,
    required this.currentPage,
    required this.results,
  });

  factory PaginationResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$PaginationResponseFromJson(
        json,
        fromJsonT,
      );
}
