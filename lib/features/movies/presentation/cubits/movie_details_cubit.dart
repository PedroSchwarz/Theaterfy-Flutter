import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theaterfy/app/conversions/conversions_service.dart';
import 'package:theaterfy/core/results/cubit_state.dart';

class MovieDetailsCubit extends Cubit<CubitState<void>> {
  final ConversionsService conversionsService;

  MovieDetailsCubit({
    required this.conversionsService,
  }) : super(const Initial(null));

  String formatReleaseDate(DateTime date) {
    // TODO - Add to properties and locales
    final dateRes = conversionsService.formatDate('dd/MM/yyyy', date);
    return dateRes.fold((_) => 'Unavailable', (result) => result);
  }
}
