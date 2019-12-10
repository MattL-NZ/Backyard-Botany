import 'package:backyard_botany/core/view_models/home_view_model.dart';
import 'package:backyard_botany/core/view_models/login_view_model.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.I;

void setupLocator() {
  locator.registerFactory(() => LoginViewModel());
  locator.registerFactory(() => HomeViewModel());
}