import 'package:get/get.dart';
import 'package:ifro/app/data/models/user.dart';

class AuthService extends GetxService {
  Future<AuthService> init() async {
    return this;
  }

  final user = User().obs;
}
