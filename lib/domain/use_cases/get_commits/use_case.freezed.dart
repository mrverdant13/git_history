// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RepoAndOwnerAndCommitPageNumberTearOff {
  const _$RepoAndOwnerAndCommitPageNumberTearOff();

  _RepoAndOwnerAndCommitPageNumber call(
      {required Repository repository, required User owner, int? page = 1}) {
    return _RepoAndOwnerAndCommitPageNumber(
      repository: repository,
      owner: owner,
      page: page,
    );
  }
}

/// @nodoc
const $RepoAndOwnerAndCommitPageNumber =
    _$RepoAndOwnerAndCommitPageNumberTearOff();

/// @nodoc
mixin _$RepoAndOwnerAndCommitPageNumber {
  Repository get repository => throw _privateConstructorUsedError;
  User get owner => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RepoAndOwnerAndCommitPageNumberCopyWith<RepoAndOwnerAndCommitPageNumber>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepoAndOwnerAndCommitPageNumberCopyWith<$Res> {
  factory $RepoAndOwnerAndCommitPageNumberCopyWith(
          RepoAndOwnerAndCommitPageNumber value,
          $Res Function(RepoAndOwnerAndCommitPageNumber) then) =
      _$RepoAndOwnerAndCommitPageNumberCopyWithImpl<$Res>;
  $Res call({Repository repository, User owner, int? page});

  $RepositoryCopyWith<$Res> get repository;
  $UserCopyWith<$Res> get owner;
}

/// @nodoc
class _$RepoAndOwnerAndCommitPageNumberCopyWithImpl<$Res>
    implements $RepoAndOwnerAndCommitPageNumberCopyWith<$Res> {
  _$RepoAndOwnerAndCommitPageNumberCopyWithImpl(this._value, this._then);

  final RepoAndOwnerAndCommitPageNumber _value;
  // ignore: unused_field
  final $Res Function(RepoAndOwnerAndCommitPageNumber) _then;

  @override
  $Res call({
    Object? repository = freezed,
    Object? owner = freezed,
    Object? page = freezed,
  }) {
    return _then(_value.copyWith(
      repository: repository == freezed
          ? _value.repository
          : repository // ignore: cast_nullable_to_non_nullable
              as Repository,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as User,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  @override
  $RepositoryCopyWith<$Res> get repository {
    return $RepositoryCopyWith<$Res>(_value.repository, (value) {
      return _then(_value.copyWith(repository: value));
    });
  }

  @override
  $UserCopyWith<$Res> get owner {
    return $UserCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value));
    });
  }
}

/// @nodoc
abstract class _$RepoAndOwnerAndCommitPageNumberCopyWith<$Res>
    implements $RepoAndOwnerAndCommitPageNumberCopyWith<$Res> {
  factory _$RepoAndOwnerAndCommitPageNumberCopyWith(
          _RepoAndOwnerAndCommitPageNumber value,
          $Res Function(_RepoAndOwnerAndCommitPageNumber) then) =
      __$RepoAndOwnerAndCommitPageNumberCopyWithImpl<$Res>;
  @override
  $Res call({Repository repository, User owner, int? page});

  @override
  $RepositoryCopyWith<$Res> get repository;
  @override
  $UserCopyWith<$Res> get owner;
}

/// @nodoc
class __$RepoAndOwnerAndCommitPageNumberCopyWithImpl<$Res>
    extends _$RepoAndOwnerAndCommitPageNumberCopyWithImpl<$Res>
    implements _$RepoAndOwnerAndCommitPageNumberCopyWith<$Res> {
  __$RepoAndOwnerAndCommitPageNumberCopyWithImpl(
      _RepoAndOwnerAndCommitPageNumber _value,
      $Res Function(_RepoAndOwnerAndCommitPageNumber) _then)
      : super(_value, (v) => _then(v as _RepoAndOwnerAndCommitPageNumber));

  @override
  _RepoAndOwnerAndCommitPageNumber get _value =>
      super._value as _RepoAndOwnerAndCommitPageNumber;

  @override
  $Res call({
    Object? repository = freezed,
    Object? owner = freezed,
    Object? page = freezed,
  }) {
    return _then(_RepoAndOwnerAndCommitPageNumber(
      repository: repository == freezed
          ? _value.repository
          : repository // ignore: cast_nullable_to_non_nullable
              as Repository,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as User,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_RepoAndOwnerAndCommitPageNumber
    implements _RepoAndOwnerAndCommitPageNumber {
  const _$_RepoAndOwnerAndCommitPageNumber(
      {required this.repository, required this.owner, this.page = 1});

  @override
  final Repository repository;
  @override
  final User owner;
  @JsonKey(defaultValue: 1)
  @override
  final int? page;

  @override
  String toString() {
    return 'RepoAndOwnerAndCommitPageNumber(repository: $repository, owner: $owner, page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RepoAndOwnerAndCommitPageNumber &&
            (identical(other.repository, repository) ||
                const DeepCollectionEquality()
                    .equals(other.repository, repository)) &&
            (identical(other.owner, owner) ||
                const DeepCollectionEquality().equals(other.owner, owner)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(repository) ^
      const DeepCollectionEquality().hash(owner) ^
      const DeepCollectionEquality().hash(page);

  @JsonKey(ignore: true)
  @override
  _$RepoAndOwnerAndCommitPageNumberCopyWith<_RepoAndOwnerAndCommitPageNumber>
      get copyWith => __$RepoAndOwnerAndCommitPageNumberCopyWithImpl<
          _RepoAndOwnerAndCommitPageNumber>(this, _$identity);
}

abstract class _RepoAndOwnerAndCommitPageNumber
    implements RepoAndOwnerAndCommitPageNumber {
  const factory _RepoAndOwnerAndCommitPageNumber(
      {required Repository repository,
      required User owner,
      int? page}) = _$_RepoAndOwnerAndCommitPageNumber;

  @override
  Repository get repository => throw _privateConstructorUsedError;
  @override
  User get owner => throw _privateConstructorUsedError;
  @override
  int? get page => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RepoAndOwnerAndCommitPageNumberCopyWith<_RepoAndOwnerAndCommitPageNumber>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$CommitsPageTearOff {
  const _$CommitsPageTearOff();

  _CommitsPage call({required KtSet<Commit> commits, required int? nextPage}) {
    return _CommitsPage(
      commits: commits,
      nextPage: nextPage,
    );
  }
}

/// @nodoc
const $CommitsPage = _$CommitsPageTearOff();

/// @nodoc
mixin _$CommitsPage {
  KtSet<Commit> get commits => throw _privateConstructorUsedError;
  int? get nextPage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommitsPageCopyWith<CommitsPage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommitsPageCopyWith<$Res> {
  factory $CommitsPageCopyWith(
          CommitsPage value, $Res Function(CommitsPage) then) =
      _$CommitsPageCopyWithImpl<$Res>;
  $Res call({KtSet<Commit> commits, int? nextPage});
}

/// @nodoc
class _$CommitsPageCopyWithImpl<$Res> implements $CommitsPageCopyWith<$Res> {
  _$CommitsPageCopyWithImpl(this._value, this._then);

  final CommitsPage _value;
  // ignore: unused_field
  final $Res Function(CommitsPage) _then;

  @override
  $Res call({
    Object? commits = freezed,
    Object? nextPage = freezed,
  }) {
    return _then(_value.copyWith(
      commits: commits == freezed
          ? _value.commits
          : commits // ignore: cast_nullable_to_non_nullable
              as KtSet<Commit>,
      nextPage: nextPage == freezed
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$CommitsPageCopyWith<$Res>
    implements $CommitsPageCopyWith<$Res> {
  factory _$CommitsPageCopyWith(
          _CommitsPage value, $Res Function(_CommitsPage) then) =
      __$CommitsPageCopyWithImpl<$Res>;
  @override
  $Res call({KtSet<Commit> commits, int? nextPage});
}

/// @nodoc
class __$CommitsPageCopyWithImpl<$Res> extends _$CommitsPageCopyWithImpl<$Res>
    implements _$CommitsPageCopyWith<$Res> {
  __$CommitsPageCopyWithImpl(
      _CommitsPage _value, $Res Function(_CommitsPage) _then)
      : super(_value, (v) => _then(v as _CommitsPage));

  @override
  _CommitsPage get _value => super._value as _CommitsPage;

  @override
  $Res call({
    Object? commits = freezed,
    Object? nextPage = freezed,
  }) {
    return _then(_CommitsPage(
      commits: commits == freezed
          ? _value.commits
          : commits // ignore: cast_nullable_to_non_nullable
              as KtSet<Commit>,
      nextPage: nextPage == freezed
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_CommitsPage implements _CommitsPage {
  const _$_CommitsPage({required this.commits, required this.nextPage});

  @override
  final KtSet<Commit> commits;
  @override
  final int? nextPage;

  @override
  String toString() {
    return 'CommitsPage(commits: $commits, nextPage: $nextPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CommitsPage &&
            (identical(other.commits, commits) ||
                const DeepCollectionEquality()
                    .equals(other.commits, commits)) &&
            (identical(other.nextPage, nextPage) ||
                const DeepCollectionEquality()
                    .equals(other.nextPage, nextPage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(commits) ^
      const DeepCollectionEquality().hash(nextPage);

  @JsonKey(ignore: true)
  @override
  _$CommitsPageCopyWith<_CommitsPage> get copyWith =>
      __$CommitsPageCopyWithImpl<_CommitsPage>(this, _$identity);
}

abstract class _CommitsPage implements CommitsPage {
  const factory _CommitsPage(
      {required KtSet<Commit> commits,
      required int? nextPage}) = _$_CommitsPage;

  @override
  KtSet<Commit> get commits => throw _privateConstructorUsedError;
  @override
  int? get nextPage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CommitsPageCopyWith<_CommitsPage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$GetCommitsFailureTearOff {
  const _$GetCommitsFailureTearOff();

  _GetCommitsFailureOffline offline() {
    return const _GetCommitsFailureOffline();
  }
}

/// @nodoc
const $GetCommitsFailure = _$GetCommitsFailureTearOff();

/// @nodoc
mixin _$GetCommitsFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() offline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? offline,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCommitsFailureOffline value) offline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCommitsFailureOffline value)? offline,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCommitsFailureCopyWith<$Res> {
  factory $GetCommitsFailureCopyWith(
          GetCommitsFailure value, $Res Function(GetCommitsFailure) then) =
      _$GetCommitsFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetCommitsFailureCopyWithImpl<$Res>
    implements $GetCommitsFailureCopyWith<$Res> {
  _$GetCommitsFailureCopyWithImpl(this._value, this._then);

  final GetCommitsFailure _value;
  // ignore: unused_field
  final $Res Function(GetCommitsFailure) _then;
}

/// @nodoc
abstract class _$GetCommitsFailureOfflineCopyWith<$Res> {
  factory _$GetCommitsFailureOfflineCopyWith(_GetCommitsFailureOffline value,
          $Res Function(_GetCommitsFailureOffline) then) =
      __$GetCommitsFailureOfflineCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetCommitsFailureOfflineCopyWithImpl<$Res>
    extends _$GetCommitsFailureCopyWithImpl<$Res>
    implements _$GetCommitsFailureOfflineCopyWith<$Res> {
  __$GetCommitsFailureOfflineCopyWithImpl(_GetCommitsFailureOffline _value,
      $Res Function(_GetCommitsFailureOffline) _then)
      : super(_value, (v) => _then(v as _GetCommitsFailureOffline));

  @override
  _GetCommitsFailureOffline get _value =>
      super._value as _GetCommitsFailureOffline;
}

/// @nodoc

class _$_GetCommitsFailureOffline implements _GetCommitsFailureOffline {
  const _$_GetCommitsFailureOffline();

  @override
  String toString() {
    return 'GetCommitsFailure.offline()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetCommitsFailureOffline);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() offline,
  }) {
    return offline();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? offline,
    required TResult orElse(),
  }) {
    if (offline != null) {
      return offline();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCommitsFailureOffline value) offline,
  }) {
    return offline(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCommitsFailureOffline value)? offline,
    required TResult orElse(),
  }) {
    if (offline != null) {
      return offline(this);
    }
    return orElse();
  }
}

abstract class _GetCommitsFailureOffline implements GetCommitsFailure {
  const factory _GetCommitsFailureOffline() = _$_GetCommitsFailureOffline;
}
