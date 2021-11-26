import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:theaterfy/app/constants/app_constants.dart';
import 'package:theaterfy/features/movies/data/models/get_movies_model.dart';
import 'package:theaterfy/features/movies/data/models/movie_model.dart';
import 'package:theaterfy/features/movies/data/services/movies_service.dart';

class Client {
  static Future<ChopperClient> buildClient() async {
    return ChopperClient(
      baseUrl: AppConstants.baseUrl,
      services: [
        MoviesService.create(),
      ],
      converter: JsonToTypeConverter({
        GetMoviesModel: (jsonMap) => GetMoviesModel.fromJson(jsonMap),
        MovieModel: (jsonMap) => MovieModel.fromJson(jsonMap),
      }),
      interceptors: [_buildAuthInterceptor],
    );
  }

  static Future<Request> _buildAuthInterceptor(Request request) async =>
      applyHeader(request, 'Authorization', 'Bearer ${AppConstants.apiToken}');
}

class JsonToTypeConverter extends JsonConverter {
  final Map<Type, Function> typeToJsonFactoryMap;

  const JsonToTypeConverter(this.typeToJsonFactoryMap);

  @override
  Response<BodyType> convertResponse<BodyType, InnerType>(Response response) {
    return response.copyWith(
      body: fromJsonData<BodyType, InnerType>(
        response.body,
        typeToJsonFactoryMap[InnerType]!,
      ),
    );
  }

  T fromJsonData<T, InnerType>(String jsonData, Function jsonParser) {
    final jsonMap = jsonDecode(jsonData);

    if (jsonMap is List) {
      return jsonMap
          .map((item) => jsonParser(item as Map<String, dynamic>) as InnerType)
          .toList() as T;
    }

    return jsonParser(jsonMap);
  }
}
