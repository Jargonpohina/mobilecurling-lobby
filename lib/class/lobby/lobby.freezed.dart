// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lobby.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Lobby _$LobbyFromJson(Map<String, dynamic> json) {
  return _Lobby.fromJson(json);
}

/// @nodoc
mixin _$Lobby {
  /// ID of the lobby
  String get id => throw _privateConstructorUsedError;

  /// Player 1 of the lobby (who created it)
  String get playerOne => throw _privateConstructorUsedError;

  /// Player 2 of the lobby (who has joined it, if someone has already)
  String? get playerTwo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LobbyCopyWith<Lobby> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LobbyCopyWith<$Res> {
  factory $LobbyCopyWith(Lobby value, $Res Function(Lobby) then) =
      _$LobbyCopyWithImpl<$Res, Lobby>;
  @useResult
  $Res call({String id, String playerOne, String? playerTwo});
}

/// @nodoc
class _$LobbyCopyWithImpl<$Res, $Val extends Lobby>
    implements $LobbyCopyWith<$Res> {
  _$LobbyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? playerOne = null,
    Object? playerTwo = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      playerOne: null == playerOne
          ? _value.playerOne
          : playerOne // ignore: cast_nullable_to_non_nullable
              as String,
      playerTwo: freezed == playerTwo
          ? _value.playerTwo
          : playerTwo // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LobbyImplCopyWith<$Res> implements $LobbyCopyWith<$Res> {
  factory _$$LobbyImplCopyWith(
          _$LobbyImpl value, $Res Function(_$LobbyImpl) then) =
      __$$LobbyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String playerOne, String? playerTwo});
}

/// @nodoc
class __$$LobbyImplCopyWithImpl<$Res>
    extends _$LobbyCopyWithImpl<$Res, _$LobbyImpl>
    implements _$$LobbyImplCopyWith<$Res> {
  __$$LobbyImplCopyWithImpl(
      _$LobbyImpl _value, $Res Function(_$LobbyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? playerOne = null,
    Object? playerTwo = freezed,
  }) {
    return _then(_$LobbyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      playerOne: null == playerOne
          ? _value.playerOne
          : playerOne // ignore: cast_nullable_to_non_nullable
              as String,
      playerTwo: freezed == playerTwo
          ? _value.playerTwo
          : playerTwo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LobbyImpl extends _Lobby {
  const _$LobbyImpl(
      {required this.id, required this.playerOne, required this.playerTwo})
      : super._();

  factory _$LobbyImpl.fromJson(Map<String, dynamic> json) =>
      _$$LobbyImplFromJson(json);

  /// ID of the lobby
  @override
  final String id;

  /// Player 1 of the lobby (who created it)
  @override
  final String playerOne;

  /// Player 2 of the lobby (who has joined it, if someone has already)
  @override
  final String? playerTwo;

  @override
  String toString() {
    return 'Lobby(id: $id, playerOne: $playerOne, playerTwo: $playerTwo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LobbyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.playerOne, playerOne) ||
                other.playerOne == playerOne) &&
            (identical(other.playerTwo, playerTwo) ||
                other.playerTwo == playerTwo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, playerOne, playerTwo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LobbyImplCopyWith<_$LobbyImpl> get copyWith =>
      __$$LobbyImplCopyWithImpl<_$LobbyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LobbyImplToJson(
      this,
    );
  }
}

abstract class _Lobby extends Lobby {
  const factory _Lobby(
      {required final String id,
      required final String playerOne,
      required final String? playerTwo}) = _$LobbyImpl;
  const _Lobby._() : super._();

  factory _Lobby.fromJson(Map<String, dynamic> json) = _$LobbyImpl.fromJson;

  @override

  /// ID of the lobby
  String get id;
  @override

  /// Player 1 of the lobby (who created it)
  String get playerOne;
  @override

  /// Player 2 of the lobby (who has joined it, if someone has already)
  String? get playerTwo;
  @override
  @JsonKey(ignore: true)
  _$$LobbyImplCopyWith<_$LobbyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
