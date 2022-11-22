import 'package:ifro/app/data/models/app_error.dart';

verifyError(data) {
  if (data.runtimeType == AppError) {
    return true;
  }
  return false;
}
