import 'package:get_it/get_it.dart';

import '../../business/implements/login/login_repository_imp.dart';
import '../../views/login/store/login_store.dart';

class Injection {
  void inject() {
    GetIt.I.registerSingleton(LoginStore(loginRepository: LoginRepositoryImp()));
  }
}
