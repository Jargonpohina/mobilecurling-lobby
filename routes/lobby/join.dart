// ignore_for_file: avoid_dynamic_calls, avoid_slow_async_io, lines_longer_than_80_chars

import 'dart:convert';
import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:mobilecurling_lobby/core/shared_classes/lobby/lobby.dart';

import '../../main.dart';

Future<Response> onRequest(RequestContext context) async {
  try {
    final data = await context.request.body();
    final map = jsonDecode(data) as Map<String, Object?>;
    final lobby = Lobby.fromJson(map);
    final jsonString = storage.get<Map<String, Object?>?>(lobby.id);
    if (jsonString != null) {
      var actualLobby = Lobby.fromJson(jsonString);
      if (actualLobby.playerTwo == null) {
        actualLobby = actualLobby.copyWith(playerTwo: lobby.playerTwo);
        storage.set(lobby.id, actualLobby.toJson());
        return Response(body: jsonEncode(actualLobby.toJson()));
      }
      return Response(statusCode: HttpStatus.internalServerError, body: 'Game is full.');
    }
    return Response(statusCode: HttpStatus.internalServerError, body: 'Failed to join lobby.');
  } catch (e, s) {
    print(e);
    print(s);
    return Response(statusCode: HttpStatus.internalServerError, body: 'Unknown failure.');
  }
}
