// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$MoviesService extends MoviesService {
  _$MoviesService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = MoviesService;

  @override
  Future<Response<GetMoviesModel>> getNowPlaying(int page) {
    final $url = '/movie/now_playing';
    final $params = <String, dynamic>{'page': page};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<GetMoviesModel, GetMoviesModel>($request);
  }
}
