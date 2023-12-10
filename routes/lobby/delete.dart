// ignore_for_file: avoid_dynamic_calls, avoid_slow_async_io, lines_longer_than_80_chars, avoid_escaping_inner_quotes

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
    if (storage.get<dynamic>(lobby.id) != null) {
      storage.remove(lobby.id);
      return Response(body: 'Deleted the lobby succesfully.');
    }
    return Response(statusCode: HttpStatus.internalServerError, body: 'Lobby doesn\'t exist.');
  } catch (e, s) {
    print(e);
    print(s);
    return Response(statusCode: HttpStatus.internalServerError, body: 'Unknown failure.');
  }
}
