import 'package:ifro/app/data/models/app_error.dart';
import 'package:ifro/app/data/models/citys.dart';
import 'package:ifro/app/data/models/states.dart';
import 'package:ifro/app/data/services/auth.dart';
import 'package:dependencies/dependencies.dart';

const baseUrl = 'https://api.escola.fslab.dev/base';

class MyApi extends GetConnect {
  signup() async {
    // final _ = await post(baseUrl, Get.find<AuthService>().user.value.toJson());
    print(Get.find<AuthService>().user.value.toJson());
    return true;
  }

  getStates() async {
    final response = await get(
      '$baseUrl/estados',
      // headers: {''}
    );
    if (response.hasError) {
      return AppError(['Algo deu errado']);
    } else {
      return statesFromJson(response.body);
    }
  }

  getCitys(uf) async {
    final response = await get(
      '$baseUrl/cidades/$uf',
      // headers: {''}
    );
    print(response.body);
    if (response.hasError) {
      return AppError(['Algo deu errado']);
    } else {
      return citysFromJson(response.body);
    }
  }
}
