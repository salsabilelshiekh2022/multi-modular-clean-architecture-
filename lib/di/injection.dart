import 'package:app_settings/di/injection.dart';
import 'package:data_source/di/injection.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'injection.config.dart';

final getIt = GetIt.instance;
@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
)
void configureDependancy(String env) {
  getIt.init(environment: env);
  configureAppSettingDependancy(getIt, env);
  configureDataSourceDependancy(getIt, env);
}
