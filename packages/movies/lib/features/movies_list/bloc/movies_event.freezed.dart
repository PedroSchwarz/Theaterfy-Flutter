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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int page) nextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int page)? nextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int page)? nextPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MoviesStarted value) started,
    required TResult Function(MoviesNextPage value) nextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MoviesStarted value)? started,
    TResult? Function(MoviesNextPage value)? nextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoviesStarted value)? started,
    TResult Function(MoviesNextPage value)? nextPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesEventCopyWith<$Res> {
  factory $MoviesEventCopyWith(
          MoviesEvent value, $Res Function(MoviesEvent) then) =
      _$MoviesEventCopyWithImpl<$Res, MoviesEvent>;
}

/// @nodoc
class _$MoviesEventCopyWithImpl<$Res, $Val extends MoviesEvent>
    implements $MoviesEventCopyWith<$Res> {
  _$MoviesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MoviesStartedCopyWith<$Res> {
  factory _$$MoviesStartedCopyWith(
          _$MoviesStarted value, $Res Function(_$MoviesStarted) then) =
      __$$MoviesStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MoviesStartedCopyWithImpl<$Res>
    extends _$MoviesEventCopyWithImpl<$Res, _$MoviesStarted>
    implements _$$MoviesStartedCopyWith<$Res> {
  __$$MoviesStartedCopyWithImpl(
      _$MoviesStarted _value, $Res Function(_$MoviesStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MoviesStarted implements MoviesStarted {
  _$MoviesStarted();

  @override
  String toString() {
    return 'MoviesEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MoviesStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int page) nextPage,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int page)? nextPage,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int page)? nextPage,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MoviesStarted value) started,
    required TResult Function(MoviesNextPage value) nextPage,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MoviesStarted value)? started,
    TResult? Function(MoviesNextPage value)? nextPage,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoviesStarted value)? started,
    TResult Function(MoviesNextPage value)? nextPage,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class MoviesStarted implements MoviesEvent {
  factory MoviesStarted() = _$MoviesStarted;
}

/// @nodoc
abstract class _$$MoviesNextPageCopyWith<$Res> {
  factory _$$MoviesNextPageCopyWith(
          _$MoviesNextPage value, $Res Function(_$MoviesNextPage) then) =
      __$$MoviesNextPageCopyWithImpl<$Res>;
  @useResult
  $Res call({int page});
}

/// @nodoc
class __$$MoviesNextPageCopyWithImpl<$Res>
    extends _$MoviesEventCopyWithImpl<$Res, _$MoviesNextPage>
    implements _$$MoviesNextPageCopyWith<$Res> {
  __$$MoviesNextPageCopyWithImpl(
      _$MoviesNextPage _value, $Res Function(_$MoviesNextPage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
  }) {
    return _then(_$MoviesNextPage(
      null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MoviesNextPage implements MoviesNextPage {
  _$MoviesNextPage(this.page);

  @override
  final int page;

  @override
  String toString() {
    return 'MoviesEvent.nextPage(page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoviesNextPage &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MoviesNextPageCopyWith<_$MoviesNextPage> get copyWith =>
      __$$MoviesNextPageCopyWithImpl<_$MoviesNextPage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int page) nextPage,
  }) {
    return nextPage(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int page)? nextPage,
  }) {
    return nextPage?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int page)? nextPage,
    required TResult orElse(),
  }) {
    if (nextPage != null) {
      return nextPage(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MoviesStarted value) started,
    required TResult Function(MoviesNextPage value) nextPage,
  }) {
    return nextPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MoviesStarted value)? started,
    TResult? Function(MoviesNextPage value)? nextPage,
  }) {
    return nextPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoviesStarted value)? started,
    TResult Function(MoviesNextPage value)? nextPage,
    required TResult orElse(),
  }) {
    if (nextPage != null) {
      return nextPage(this);
    }
    return orElse();
  }
}

abstract class MoviesNextPage implements MoviesEvent {
  factory MoviesNextPage(final int page) = _$MoviesNextPage;

  int get page;
  @JsonKey(ignore: true)
  _$$MoviesNextPageCopyWith<_$MoviesNextPage> get copyWith =>
      throw _privateConstructorUsedError;
}
