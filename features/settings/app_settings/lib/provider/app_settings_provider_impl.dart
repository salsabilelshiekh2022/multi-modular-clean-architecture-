import 'package:injectable/injectable.dart';

import 'app_settings_provider.dart';

@Injectable(as: AppSettingsProvider, env: [Environment.prod])
class ProdAppSettingsProviderImpl implements AppSettingsProvider {
  @override
  String getAppLanguage() {
    return "English";
  }

  @override
  String getAppTheme() {
    return "Dark";
  }
}

@Injectable(as: AppSettingsProvider, env: [Environment.dev])
class DevAppSettingsProviderImpl implements AppSettingsProvider {
  @override
  String getAppLanguage() {
    return "English";
  }

  @override
  String getAppTheme() {
    return "Dark";
  }
}
