// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movies_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MoviesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            int totalPages, int currentPage, List<MovieModel> movies)
        success,
    required TResult Function() empty,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(int totalPages, int currentPage, List<MovieModel> movies)?
        success,
    TResult? Function()? empty,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(int totalPages, int currentPage, List<MovieModel> movies)?
        success,
    TResult Function()? empty,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MoviesLoading value) loading,
    required TResult Function(MoviesSuccess value) success,
    required TResult Function(MoviesEmpty value) empty,
    required TResult Function(MoviesFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MoviesLoading value)? loading,
    TResult? Function(MoviesSuccess value)? success,
    TResult? Function(MoviesEmpty value)? empty,
    TResult? Function(MoviesFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoviesLoading value)? loading,
    TResult Function(MoviesSuccess value)? success,
    TResult Function(MoviesEmpty value)? empty,
    TResult Function(MoviesFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesStateCopyWith<$Res> {
  factory $MoviesStateCopyWith(
          MoviesState value, $Res Function(MoviesState) then) =
      _$MoviesStateCopyWithImpl<$Res, MoviesState>;
}

/// @nodoc
class _$MoviesStateCopyWithImpl<$Res, $Val extends MoviesState>
    implements $MoviesStateCopyWith<$Res> {
  _$MoviesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MoviesLoadingCopyWith<$Res> {
  factory _$$MoviesLoadingCopyWith(
          _$MoviesLoading value, $Res Function(_$MoviesLoading) then) =
      __$$MoviesLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MoviesLoadingCopyWithImpl<$Res>
    extends _$MoviesStateCopyWithImpl<$Res, _$MoviesLoading>
    implements _$$MoviesLoadingCopyWith<$Res> {
  __$$MoviesLoadingCopyWithImpl(
      _$MoviesLoading _value, $Res Function(_$MoviesLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MoviesLoading implements MoviesLoading {
  _$MoviesLoading();

  @override
  String toString() {
    return 'MoviesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MoviesLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            int totalPages, int currentPage, List<MovieModel> movies)
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
    TResult? Function(int totalPages, int currentPage, List<MovieModel> movies)?
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
    TResult Function(int totalPages, int currentPage, List<MovieModel> movies)?
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
    required TResult Function(MoviesLoading value) loading,
    required TResult Function(MoviesSuccess value) success,
    required TResult Function(MoviesEmpty value) empty,
    required TResult Function(MoviesFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MoviesLoading value)? loading,
    TResult? Function(MoviesSuccess value)? success,
    TResult? Function(MoviesEmpty value)? empty,
    TResult? Function(MoviesFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoviesLoading value)? loading,
    TResult Function(MoviesSuccess value)? success,
    TResult Function(MoviesEmpty value)? empty,
    TResult Function(MoviesFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MoviesLoading implements MoviesState {
  factory MoviesLoading() = _$MoviesLoading;
}

/// @nodoc
abstract class _$$MoviesSuccessCopyWith<$Res> {
  factory _$$MoviesSuccessCopyWith(
          _$MoviesSuccess value, $Res Function(_$MoviesSuccess) then) =
      __$$MoviesSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({int totalPages, int currentPage, List<MovieModel> movies});
}

/// @nodoc
class __$$MoviesSuccessCopyWithImpl<$Res>
    extends _$MoviesStateCopyWithImpl<$Res, _$MoviesSuccess>
    implements _$$MoviesSuccessCopyWith<$Res> {
  __$$MoviesSuccessCopyWithImpl(
      _$MoviesSuccess _value, $Res Function(_$MoviesSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalPages = null,
    Object? currentPage = null,
    Object? movies = null,
  }) {
    return _then(_$MoviesSuccess(
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
    ));
  }
}

/// @nodoc

class _$MoviesSuccess implements MoviesSuccess {
  _$MoviesSuccess(
      {required this.totalPages,
      required this.currentPage,
      required final List<MovieModel> movies})
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
  String toString() {
    return 'MoviesState.success(totalPages: $totalPages, currentPage: $currentPage, movies: $movies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoviesSuccess &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            const DeepCollectionEquality().equals(other._movies, _movies));
  }

  @override
  int get hashCode => Object.hash(runtimeType, totalPages, currentPage,
      const DeepCollectionEquality().hash(_movies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MoviesSuccessCopyWith<_$MoviesSuccess> get copyWith =>
      __$$MoviesSuccessCopyWithImpl<_$MoviesSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            int totalPages, int currentPage, List<MovieModel> movies)
        success,
    required TResult Function() empty,
    required TResult Function(String message) failure,
  }) {
    return success(totalPages, currentPage, movies);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(int totalPages, int currentPage, List<MovieModel> movies)?
        success,
    TResult? Function()? empty,
    TResult? Function(String message)? failure,
  }) {
    return success?.call(totalPages, currentPage, movies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(int totalPages, int currentPage, List<MovieModel> movies)?
        success,
    TResult Function()? empty,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(totalPages, currentPage, movies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MoviesLoading value) loading,
    required TResult Function(MoviesSuccess value) success,
    required TResult Function(MoviesEmpty value) empty,
    required TResult Function(MoviesFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MoviesLoading value)? loading,
    TResult? Function(MoviesSuccess value)? success,
    TResult? Function(MoviesEmpty value)? empty,
    TResult? Function(MoviesFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoviesLoading value)? loading,
    TResult Function(MoviesSuccess value)? success,
    TResult Function(MoviesEmpty value)? empty,
    TResult Function(MoviesFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class MoviesSuccess implements MoviesState {
  factory MoviesSuccess(
      {required final int totalPages,
      required final int currentPage,
      required final List<MovieModel> movies}) = _$MoviesSuccess;

  int get totalPages;
  int get currentPage;
  List<MovieModel> get movies;
  @JsonKey(ignore: true)
  _$$MoviesSuccessCopyWith<_$MoviesSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MoviesEmptyCopyWith<$Res> {
  factory _$$MoviesEmptyCopyWith(
          _$MoviesEmpty value, $Res Function(_$MoviesEmpty) then) =
      __$$MoviesEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MoviesEmptyCopyWithImpl<$Res>
    extends _$MoviesStateCopyWithImpl<$Res, _$MoviesEmpty>
    implements _$$MoviesEmptyCopyWith<$Res> {
  __$$MoviesEmptyCopyWithImpl(
      _$MoviesEmpty _value, $Res Function(_$MoviesEmpty) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MoviesEmpty implements MoviesEmpty {
  _$MoviesEmpty();

  @override
  String toString() {
    return 'MoviesState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MoviesEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            int totalPages, int currentPage, List<MovieModel> movies)
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
    TResult? Function(int totalPages, int currentPage, List<MovieModel> movies)?
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
    TResult Function(int totalPages, int currentPage, List<MovieModel> movies)?
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
    required TResult Function(MoviesLoading value) loading,
    required TResult Function(MoviesSuccess value) success,
    required TResult Function(MoviesEmpty value) empty,
    required TResult Function(MoviesFailure value) failure,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MoviesLoading value)? loading,
    TResult? Function(MoviesSuccess value)? success,
    TResult? Function(MoviesEmpty value)? empty,
    TResult? Function(MoviesFailure value)? failure,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoviesLoading value)? loading,
    TResult Function(MoviesSuccess value)? success,
    TResult Function(MoviesEmpty value)? empty,
    TResult Function(MoviesFailure value)? failure,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class MoviesEmpty implements MoviesState {
  factory MoviesEmpty() = _$MoviesEmpty;
}

/// @nodoc
abstract class _$$MoviesFailureCopyWith<$Res> {
  factory _$$MoviesFailureCopyWith(
          _$MoviesFailure value, $Res Function(_$MoviesFailure) then) =
      __$$MoviesFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$MoviesFailureCopyWithImpl<$Res>
    extends _$MoviesStateCopyWithImpl<$Res, _$MoviesFailure>
    implements _$$MoviesFailureCopyWith<$Res> {
  __$$MoviesFailureCopyWithImpl(
      _$MoviesFailure _value, $Res Function(_$MoviesFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$MoviesFailure(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MoviesFailure implements MoviesFailure {
  _$MoviesFailure({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'MoviesState.failure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoviesFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MoviesFailureCopyWith<_$MoviesFailure> get copyWith =>
      __$$MoviesFailureCopyWithImpl<_$MoviesFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            int totalPages, int currentPage, List<MovieModel> movies)
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
    TResult? Function(int totalPages, int currentPage, List<MovieModel> movies)?
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
    TResult Function(int totalPages, int currentPage, List<MovieModel> movies)?
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
    required TResult Function(MoviesLoading value) loading,
    required TResult Function(MoviesSuccess value) success,
    required TResult Function(MoviesEmpty value) empty,
    required TResult Function(MoviesFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MoviesLoading value)? loading,
    TResult? Function(MoviesSuccess value)? success,
    TResult? Function(MoviesEmpty value)? empty,
    TResult? Function(MoviesFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoviesLoading value)? loading,
    TResult Function(MoviesSuccess value)? success,
    TResult Function(MoviesEmpty value)? empty,
    TResult Function(MoviesFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class MoviesFailure implements MoviesState {
  factory MoviesFailure({required final String message}) = _$MoviesFailure;

  String get message;
  @JsonKey(ignore: true)
  _$$MoviesFailureCopyWith<_$MoviesFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
