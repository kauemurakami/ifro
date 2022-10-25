import 'package:dependencies/dependencies.dart';
import 'package:ifro/app/data/services/auth.dart';

onChangedEndereco(value) => Get.find<AuthService>().user.value.endereco = value;
validateEndereco(value) =>
    value.length < 4 ? 'Insira um endereço válido' : null;

saveEndereco(value) => Get.find<AuthService>().user.value.endereco = value;
onChangedNumero(value) => Get.find<AuthService>().user.value.numero = value;
validateNumero(value) =>
    value.length < 1 ? 'Insira um número residencial' : null;

saveNumero(value) => Get.find<AuthService>().user.value.numero = value;
onChangedBairro(value) => Get.find<AuthService>().user.value.bairro = value;
validateBairro(value) => value.length < 2 ? 'Insira um bairro válido' : null;
saveBairro(value) => Get.find<AuthService>().user.value.bairro = value;
