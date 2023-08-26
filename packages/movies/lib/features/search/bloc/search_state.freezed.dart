// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(int totalPages, int currentPage,
            List<MovieModel> movies, bool isLoadingMore, String query)
        success,
    required TResult Function() empty,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(int totalPages, int currentPage, List<MovieModel> movies,
            bool isLoadingMore, String query)?
        success,
    TResult? Function()? empty,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(int totalPages, int currentPage, List<MovieModel> movies,
            bool isLoadingMore, String query)?
        success,
    TResult Function()? empty,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchLoading value) loading,
    required TResult Function(SearchSuccess value) success,
    required TResult Function(SearchEmpty value) empty,
    required TResult Function(SearchFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchLoading value)? loading,
    TResult? Function(SearchSuccess value)? success,
    TResult? Function(SearchEmpty value)? empty,
    TResult? Function(SearchFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchLoading value)? loading,
    TResult Function(SearchSuccess value)? success,
    TResult Function(SearchEmpty value)? empty,
    TResult Function(SearchFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SearchLoadingCopyWith<$Res> {
  factory _$$SearchLoadingCopyWith(
          _$SearchLoading value, $Res Function(_$SearchLoading) then) =
      __$$SearchLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchLoadingCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchLoading>
    implements _$$SearchLoadingCopyWith<$Res> {
  __$$SearchLoadingCopyWithImpl(
      _$SearchLoading _value, $Res Function(_$SearchLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SearchLoading implements SearchLoading {
  _$SearchLoading();

  @override
  String toString() {
    return 'SearchState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(int totalPages, int currentPage,
            List<MovieModel> movies, bool isLoadingMore, String query)
        success,
    required TResult Function() empty,
    required TResult Function(String message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(int totalPages, int currentPage, List<MovieModel> movies,
            bool isLoadingMore, String query)?
        success,
    TResult? Function()? empty,
    TResult? Function(String message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(int totalPages, int currentPage, List<MovieModel> movies,
            bool isLoadingMore, String query)?
        success,
    TResult Function()? empty,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchLoading value) loading,
    required TResult Function(SearchSuccess value) success,
    required TResult Function(SearchEmpty value) empty,
    required TResult Function(SearchFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchLoading value)? loading,
    TResult? Function(SearchSuccess value)? success,
    TResult? Function(SearchEmpty value)? empty,
    TResult? Function(SearchFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchLoading value)? loading,
    TResult Function(SearchSuccess value)? success,
    TResult Function(SearchEmpty value)? empty,
    TResult Function(SearchFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SearchLoading implements SearchState {
  factory SearchLoading() = _$SearchLoading;
}

/// @nodoc
abstract class _$$SearchSuccessCopyWith<$Res> {
  factory _$$SearchSuccessCopyWith(
          _$SearchSuccess value, $Res Function(_$SearchSuccess) then) =
      __$$SearchSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int totalPages,
      int currentPage,
      List<MovieModel> movies,
      bool isLoadingMore,
      String query});
}

/// @nodoc
class __$$SearchSuccessCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchSuccess>
    implements _$$SearchSuccessCopyWith<$Res> {
  __$$SearchSuccessCopyWithImpl(
      _$SearchSuccess _value, $Res Function(_$SearchSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalPages = null,
    Object? currentPage = null,
    Object? movies = null,
    Object? isLoadingMore = null,
    Object? query = null,
  }) {
    return _then(_$SearchSuccess(
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      movies: null == movies
          ? _value._movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<MovieModel>,
      isLoadingMore: null == isLoadingMore
          ? _value.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchSuccess implements SearchSuccess {
  _$SearchSuccess(
      {required this.totalPages,
      required this.currentPage,
      required final List<MovieModel> movies,
      this.isLoadingMore = false,
      this.query = ''})
      : _movies = movies;

  @override
  final int totalPages;
  @override
  final int currentPage;
  final List<MovieModel> _movies;
  @override
  List<MovieModel> get movies {
    if (_movies is EqualUnmodifiableListView) return _movies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_movies);
  }

  @override
  @JsonKey()
  final bool isLoadingMore;
  @override
  @JsonKey()
  final String query;

  @override
  String toString() {
    return 'SearchState.success(totalPages: $totalPages, currentPage: $currentPage, movies: $movies, isLoadingMore: $isLoadingMore, query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchSuccess &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            const DeepCollectionEquality().equals(other._movies, _movies) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore) &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, totalPages, currentPage,
      const DeepCollectionEquality().hash(_movies), isLoadingMore, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchSuccessCopyWith<_$SearchSuccess> get copyWith =>
      __$$SearchSuccessCopyWithImpl<_$SearchSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(int totalPages, int currentPage,
            List<MovieModel> movies, bool isLoadingMore, String query)
        success,
    required TResult Function() empty,
    required TResult Function(String message) failure,
  }) {
    return success(totalPages, currentPage, movies, isLoadingMore, query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(int totalPages, int currentPage, List<MovieModel> movies,
            bool isLoadingMore, String query)?
        success,
    TResult? Function()? empty,
    TResult? Function(String message)? failure,
  }) {
    return success?.call(totalPages, currentPage, movies, isLoadingMore, query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(int totalPages, int currentPage, List<MovieModel> movies,
            bool isLoadingMore, String query)?
        success,
    TResult Function()? empty,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(totalPages, currentPage, movies, isLoadingMore, query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchLoading value) loading,
    required TResult Function(SearchSuccess value) success,
    required TResult Function(SearchEmpty value) empty,
    required TResult Function(SearchFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchLoading value)? loading,
    TResult? Function(SearchSuccess value)? success,
    TResult? Function(SearchEmpty value)? empty,
    TResult? Function(SearchFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchLoading value)? loading,
    TResult Function(SearchSuccess value)? success,
    TResult Function(SearchEmpty value)? empty,
    TResult Function(SearchFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SearchSuccess implements SearchState {
  factory SearchSuccess(
      {required final int totalPages,
      required final int currentPage,
      required final List<MovieModel> movies,
      final bool isLoadingMore,
      final String query}) = _$SearchSuccess;

  int get totalPages;
  int get currentPage;
  List<MovieModel> get movies;
  bool get isLoadingMore;
  String get query;
  @JsonKey(ignore: true)
  _$$SearchSuccessCopyWith<_$SearchSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchEmptyCopyWith<$Res> {
  factory _$$SearchEmptyCopyWith(
          _$SearchEmpty value, $Res Function(_$SearchEmpty) then) =
      __$$SearchEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchEmptyCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchEmpty>
    implements _$$SearchEmptyCopyWith<$Res> {
  __$$SearchEmptyCopyWithImpl(
      _$SearchEmpty _value, $Res Function(_$SearchEmpty) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SearchEmpty implements SearchEmpty {
  _$SearchEmpty();

  @override
  String toString() {
    return 'SearchState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(int totalPages, int currentPage,
            List<MovieModel> movies, bool isLoadingMore, String query)
        success,
    required TResult Function() empty,
    required TResult Function(String message) failure,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(int totalPages, int currentPage, List<MovieModel> movies,
            bool isLoadingMore, String query)?
        success,
    TResult? Function()? empty,
    TResult? Function(String message)? failure,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(int totalPages, int currentPage, List<MovieModel> movies,
            bool isLoadingMore, String query)?
        success,
    TResult Function()? empty,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchLoading value) loading,
    required TResult Function(SearchSuccess value) success,
    required TResult Function(SearchEmpty value) empty,
    required TResult Function(SearchFailure value) failure,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchLoading value)? loading,
    TResult? Function(SearchSuccess value)? success,
    TResult? Function(SearchEmpty value)? empty,
    TResult? Function(SearchFailure value)? failure,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchLoading value)? loading,
    TResult Function(SearchSuccess value)? success,
    TResult Function(SearchEmpty value)? empty,
    TResult Function(SearchFailure value)? failure,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class SearchEmpty implements SearchState {
  factory SearchEmpty() = _$SearchEmpty;
}

/// @nodoc
abstract class _$$SearchFailureCopyWith<$Res> {
  factory _$$SearchFailureCopyWith(
          _$SearchFailure value, $Res Function(_$SearchFailure) then) =
      __$$SearchFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SearchFailureCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchFailure>
    implements _$$SearchFailureCopyWith<$Res> {
  __$$SearchFailureCopyWithImpl(
      _$SearchFailure _value, $Res Function(_$SearchFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SearchFailure(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchFailure implements SearchFailure {
  _$SearchFailure({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'SearchState.failure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchFailureCopyWith<_$SearchFailure> get copyWith =>
      __$$SearchFailureCopyWithImpl<_$SearchFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(int totalPages, int currentPage,
            List<MovieModel> movies, bool isLoadingMore, String query)
        success,
    required TResult Function() empty,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(int totalPages, int currentPage, List<MovieModel> movies,
            bool isLoadingMore, String query)?
        success,
    TResult? Function()? empty,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(int totalPages, int currentPage, List<MovieModel> movies,
            bool isLoadingMore, String query)?
        success,
    TResult Function()? empty,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchLoading value) loading,
    required TResult Function(SearchSuccess value) success,
    required TResult Function(SearchEmpty value) empty,
    required TResult Function(SearchFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchLoading value)? loading,
    TResult? Function(SearchSuccess value)? success,
    TResult? Function(SearchEmpty value)? empty,
    TResult? Function(SearchFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchLoading value)? loading,
    TResult Function(SearchSuccess value)? success,
    TResult Function(SearchEmpty value)? empty,
    TResult Function(SearchFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class SearchFailure implements SearchState {
  factory SearchFailure({required final String message}) = _$SearchFailure;

  String get message;
  @JsonKey(ignore: true)
  _$$SearchFailureCopyWith<_$SearchFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
