// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movies_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MoviesEvent {
  int get page => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) fetchPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page)? fetchPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? fetchPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MoviesFetchPage value) fetchPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MoviesFetchPage value)? fetchPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoviesFetchPage value)? fetchPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MoviesEventCopyWith<MoviesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesEventCopyWith<$Res> {
  factory $MoviesEventCopyWith(
          MoviesEvent value, $Res Function(MoviesEvent) then) =
      _$MoviesEventCopyWithImpl<$Res, MoviesEvent>;
  @useResult
  $Res call({int page});
}

/// @nodoc
class _$MoviesEventCopyWithImpl<$Res, $Val extends MoviesEvent>
    implements $MoviesEventCopyWith<$Res> {
  _$MoviesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MoviesFetchPageCopyWith<$Res>
    implements $MoviesEventCopyWith<$Res> {
  factory _$$MoviesFetchPageCopyWith(
          _$MoviesFetchPage value, $Res Function(_$MoviesFetchPage) then) =
      __$$MoviesFetchPageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page});
}

/// @nodoc
class __$$MoviesFetchPageCopyWithImpl<$Res>
    extends _$MoviesEventCopyWithImpl<$Res, _$MoviesFetchPage>
    implements _$$MoviesFetchPageCopyWith<$Res> {
  __$$MoviesFetchPageCopyWithImpl(
      _$MoviesFetchPage _value, $Res Function(_$MoviesFetchPage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
  }) {
    return _then(_$MoviesFetchPage(
      null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MoviesFetchPage implements MoviesFetchPage {
  _$MoviesFetchPage(this.page);

  @override
  final int page;

  @override
  String toString() {
    return 'MoviesEvent.fetchPage(page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoviesFetchPage &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MoviesFetchPageCopyWith<_$MoviesFetchPage> get copyWith =>
      __$$MoviesFetchPageCopyWithImpl<_$MoviesFetchPage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) fetchPage,
  }) {
    return fetchPage(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page)? fetchPage,
  }) {
    return fetchPage?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? fetchPage,
    required TResult orElse(),
  }) {
    if (fetchPage != null) {
      return fetchPage(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MoviesFetchPage value) fetchPage,
  }) {
    return fetchPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MoviesFetchPage value)? fetchPage,
  }) {
    return fetchPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoviesFetchPage value)? fetchPage,
    required TResult orElse(),
  }) {
    if (fetchPage != null) {
      return fetchPage(this);
    }
    return orElse();
  }
}

abstract class MoviesFetchPage implements MoviesEvent {
  factory MoviesFetchPage(final int page) = _$MoviesFetchPage;

  @override
  int get page;
  @override
  @JsonKey(ignore: true)
  _$$MoviesFetchPageCopyWith<_$MoviesFetchPage> get copyWith =>
      throw _privateConstructorUsedError;
}
