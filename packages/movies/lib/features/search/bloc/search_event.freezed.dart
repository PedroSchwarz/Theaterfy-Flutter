// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) queried,
    required TResult Function(int page) nextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? queried,
    TResult? Function(int page)? nextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? queried,
    TResult Function(int page)? nextPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchQueried value) queried,
    required TResult Function(SearchNextPage value) nextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchQueried value)? queried,
    TResult? Function(SearchNextPage value)? nextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchQueried value)? queried,
    TResult Function(SearchNextPage value)? nextPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res, SearchEvent>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res, $Val extends SearchEvent>
    implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SearchQueriedCopyWith<$Res> {
  factory _$$SearchQueriedCopyWith(
          _$SearchQueried value, $Res Function(_$SearchQueried) then) =
      __$$SearchQueriedCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchQueriedCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$SearchQueried>
    implements _$$SearchQueriedCopyWith<$Res> {
  __$$SearchQueriedCopyWithImpl(
      _$SearchQueried _value, $Res Function(_$SearchQueried) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchQueried(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchQueried implements SearchQueried {
  _$SearchQueried(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'SearchEvent.queried(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchQueried &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchQueriedCopyWith<_$SearchQueried> get copyWith =>
      __$$SearchQueriedCopyWithImpl<_$SearchQueried>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) queried,
    required TResult Function(int page) nextPage,
  }) {
    return queried(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? queried,
    TResult? Function(int page)? nextPage,
  }) {
    return queried?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? queried,
    TResult Function(int page)? nextPage,
    required TResult orElse(),
  }) {
    if (queried != null) {
      return queried(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchQueried value) queried,
    required TResult Function(SearchNextPage value) nextPage,
  }) {
    return queried(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchQueried value)? queried,
    TResult? Function(SearchNextPage value)? nextPage,
  }) {
    return queried?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchQueried value)? queried,
    TResult Function(SearchNextPage value)? nextPage,
    required TResult orElse(),
  }) {
    if (queried != null) {
      return queried(this);
    }
    return orElse();
  }
}

abstract class SearchQueried implements SearchEvent {
  factory SearchQueried(final String query) = _$SearchQueried;

  String get query;
  @JsonKey(ignore: true)
  _$$SearchQueriedCopyWith<_$SearchQueried> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchNextPageCopyWith<$Res> {
  factory _$$SearchNextPageCopyWith(
          _$SearchNextPage value, $Res Function(_$SearchNextPage) then) =
      __$$SearchNextPageCopyWithImpl<$Res>;
  @useResult
  $Res call({int page});
}

/// @nodoc
class __$$SearchNextPageCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$SearchNextPage>
    implements _$$SearchNextPageCopyWith<$Res> {
  __$$SearchNextPageCopyWithImpl(
      _$SearchNextPage _value, $Res Function(_$SearchNextPage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
  }) {
    return _then(_$SearchNextPage(
      null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SearchNextPage implements SearchNextPage {
  _$SearchNextPage(this.page);

  @override
  final int page;

  @override
  String toString() {
    return 'SearchEvent.nextPage(page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchNextPage &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchNextPageCopyWith<_$SearchNextPage> get copyWith =>
      __$$SearchNextPageCopyWithImpl<_$SearchNextPage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) queried,
    required TResult Function(int page) nextPage,
  }) {
    return nextPage(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? queried,
    TResult? Function(int page)? nextPage,
  }) {
    return nextPage?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? queried,
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
    required TResult Function(SearchQueried value) queried,
    required TResult Function(SearchNextPage value) nextPage,
  }) {
    return nextPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchQueried value)? queried,
    TResult? Function(SearchNextPage value)? nextPage,
  }) {
    return nextPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchQueried value)? queried,
    TResult Function(SearchNextPage value)? nextPage,
    required TResult orElse(),
  }) {
    if (nextPage != null) {
      return nextPage(this);
    }
    return orElse();
  }
}

abstract class SearchNextPage implements SearchEvent {
  factory SearchNextPage(final int page) = _$SearchNextPage;

  int get page;
  @JsonKey(ignore: true)
  _$$SearchNextPageCopyWith<_$SearchNextPage> get copyWith =>
      throw _privateConstructorUsedError;
}
