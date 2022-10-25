import 'package:ifro/app/data/models/app_error.dart';

verifyError(a) {
  if (a.runtimeType == AppError) {
    return true;
  }
  return false;
}
