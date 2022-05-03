import 'package:get_it/get_it.dart';
import 'package:resource_manager/business/implements/login/login_repository_imp.dart';
import 'package:resource_manager/core/repository/login/login_repository.dart';
import 'package:resource_manager/views/login/store/login_store.dart';

class Injection {
  void inject() {
    GetIt.I
        .registerSingleton(LoginStore(loginRepository: LoginRepositoryImp()));
  }
}
