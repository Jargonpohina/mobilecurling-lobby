// ignore_for_file: avoid_dynamic_calls, avoid_slow_async_io, lines_longer_than_80_chars

import 'dart:convert';
import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:mobilecurling_lobby/core/shared_classes/lobby/lobby.dart';
import 'package:mobilecurling_lobby/core/validate.dart';

import '../../main.dart';

Future<Response> onRequest(RequestContext context) async {
  // Delete the lobbies that are too old
  final file = File('./lobbies.json');
  final lobbiesText = await file.readAsString();
  if (lobbiesText.isNotEmpty) {
    final lobbyMap = jsonDecode(lobbiesText) as Map<String, Object?>;
    for (final entry in lobbyMap.entries) {
      final lobby = Lobby.fromJson(entry.value! as Map<String, Object?>);
      final currentTime = DateTime.now();
      if (currentTime.difference(lobby.createdAt).compareTo(const Duration(minutes: 20)) >= 0) {
        storage.remove(entry.key);
      }
    }
  }
  if (context.request.method == HttpMethod.post) {
    final data = await context.request.body();
    final map = jsonDecode(data) as Map<String, dynamic>;
    final lobby = Lobby.fromJson(map);
    if (await validate(lobby.playerOne)) {
      final savedLobby = lobby.copyWith(createdAt: DateTime.now()).toJson();
      storage.set(lobby.id, savedLobby);
      return Response(body: jsonEncode(savedLobby));
    }
  }
  if (context.request.method == HttpMethod.get) {
    final file = File('./lobbies.json');
    if (await file.exists()) {
      final data = await file.readAsString();
      return Response(body: data);
    }
    return Response(statusCode: HttpStatus.internalServerError, body: 'No lobbies.');
  }
  return Response(statusCode: HttpStatus.internalServerError, body: 'Unknown failure.');
}
