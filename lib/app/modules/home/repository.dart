import 'package:ifro/app/data/providers/api.dart';

class HomeRepository {
  final MyApi api;

  HomeRepository(this.api);
  getStates() => api.getStates();
  getCitys(uf) => api.getCitys(uf);
  signup() => api.signup();
}
