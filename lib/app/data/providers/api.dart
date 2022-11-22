import 'package:ifro/app/data/models/app_error.dart';
import 'package:ifro/app/data/models/citys.dart';
import 'package:ifro/app/data/models/serie.dart';
import 'package:ifro/app/data/models/states.dart';
import 'package:ifro/app/data/services/auth.dart';
import 'package:dependencies/dependencies.dart';

const baseUrl = 'https://api.escola.fslab.dev/';

class MyApi extends GetConnect {
  //post
  // https://api.escola.fslab.dev/ensino/serie
  postSerie(Serie serie) async {
    print(serie.toJson());
    final response = await post('$baseUrl/ensino/serie', serie.toJson());
    if (response.hasError) {
      return AppError(errors: ['Erro ao inserir série']);
    } else {
      print('return');
      return Serie.fromJson(response.body);
    }
  }

  //get
  // https://api.escola.fslab.dev/ensino/serie
  getSeries() async {
    final response = await get('$baseUrl/ensino/serie');
    if (response.hasError) {
      return AppError(errors: ['Erro ao recuperar séries']);
    } else {
      return serieFromJson(response.body);
    }
  }

  //delete
  // https://api.escola.fslab.dev/ensino/serie/$id
  deleteSerie(id) async {
    final response = await delete('$baseUrl/ensino/serie/$id');
    if (response.hasError) {
      return AppError(errors: ['Erro ao deletar série']);
    } else {
      return true;
    }
  }

  //patch
  // https://api.escola.fslab.dev/ensino/serie/$id
  putSerie(Serie serie) async {
    print('id ${serie.id}');
    final response =
        await patch('$baseUrl/ensino/serie/${serie.id}', serie.toJson());
    if (response.hasError) {
      return AppError(errors: ['Erro ao alterar série']);
    } else {
      print(Serie.fromJson(response.body));

      return Serie.fromJson(response.body);
    }
  }

  //get id
  // https://api.escola.fslab.dev/ensino/serie/$id
  getSerie(id) async {
    final response = await get('$baseUrl/ensino/serie/$id');
    if (response.hasError) {
      return AppError(errors: ['Erro ao recuperar série $id']);
    } else {
      print(response.body);
      return Serie.fromJson(response.body);
    }
  }

  signup() async {
    // final _ = await post(baseUrl, Get.find<AuthService>().user.value.toJson());
    print(Get.find<AuthService>().user.value.toJson());
    return true;
  }

  getStates() async {
    final response = await get(
      '$baseUrl/base/estados',
      // headers: {''}
    );
    if (response.hasError) {
      return AppError(errors: ['Algo deu errado']);
    } else {
      return statesFromJson(response.body);
    }
  }

  getCitys(uf) async {
    final response = await get(
      '$baseUrl/base/cidades/$uf',
      // headers: {''}
    );
    print(response.body);
    if (response.hasError) {
      return AppError(errors: ['Algo deu errado']);
    } else {
      return citysFromJson(response.body);
    }
  }
}
