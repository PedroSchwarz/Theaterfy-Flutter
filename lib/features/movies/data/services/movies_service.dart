import 'package:chopper/chopper.dart';
import 'package:theaterfy/features/movies/data/models/get_movies_model.dart';

part "movies_service.chopper.dart";

@ChopperApi(baseUrl: "/movie")
abstract class MoviesService extends ChopperService {
  static MoviesService create([ChopperClient? client]) =>
      _$MoviesService(client);

  @Get(path: '/now_playing')
  Future<Response<GetMoviesModel>> getNowPlaying(@Query('page') int page);
}
