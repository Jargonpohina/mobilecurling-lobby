// ignore_for_file: avoid_dynamic_calls, avoid_slow_async_io

import 'dart:convert';
import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:mobilecurling_lobby/core/shared_classes/lobby/lobby.dart';

import '../../main.dart';

Future<Response> onRequest(RequestContext context) async {
  if (context.request.method == HttpMethod.post) {
    final data = await context.request.body();
    final map = jsonDecode(data) as Map<String, dynamic>;
    final lobby = Lobby.fromJson(map);
    storage.set(lobby.id, lobby.toJson());
    return Response(body: 'Created lobby');
  }
  if (context.request.method == HttpMethod.delete) {
    final data = await context.request.body();
    final map = jsonDecode(data) as Map<String, dynamic>;
    final lobby = Lobby.fromJson(map);
    storage.remove(lobby.id);
    return Response(body: 'Deleted lobby');
  }
  if (context.request.method == HttpMethod.get) {
    final File file = File('./lobbies.txt');
    if (await file.exists()) {
      final data = await file.readAsString();
      return Response(body: data);
    }
    return Response(statusCode: HttpStatus.internalServerError, body: 'No lobbies.');
  }
  return Response(statusCode: HttpStatus.internalServerError, body: 'Unknown failure.');
}
