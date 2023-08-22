// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginationResponse<T> _$PaginationResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    PaginationResponse<T>(
      totalPages: json['total_pages'] as int,
      currentPage: json['page'] as int,
      results: (json['results'] as List<dynamic>).map(fromJsonT).toList(),
    );
