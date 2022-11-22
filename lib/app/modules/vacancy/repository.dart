import 'package:ifro/app/data/providers/api.dart';

class VacancyRepository {
  final MyApi api;

  VacancyRepository(this.api);

  postSerie(serie) => api.postSerie(serie);
  getSeries() => api.getSeries();
  getSerie(id) => api.getSerie(id);
  deleteSerie(id) => api.deleteSerie(id);
  putSerie(serie) => api.putSerie(serie);
}
