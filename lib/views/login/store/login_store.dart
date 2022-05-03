import 'package:mobx/mobx.dart';
import 'package:resource_manager/core/repository/login/login_repository.dart';
part 'login_store.g.dart';

class LoginStore = _LoginStoreBase with _$LoginStore;

abstract class _LoginStoreBase with Store {
  final LoginRepository _loginRepository;

  _LoginStoreBase({required LoginRepository loginRepository})
      : _loginRepository = loginRepository;

  @observable
  String loginStatus = "";

  @observable
  String emailAddress = "";

  @observable
  String password = "";

  @action
  void setEmailAddress(value) => emailAddress = value;

  @action
  void setPassword(value) => password = value;

  @action
  Future<void> registryUser(
          {required String emailAddress, required String password}) async =>
      await _loginRepository
          .registryUser(emailAddress: emailAddress, password: password)
          .then((status) => loginStatus = status);

  @action
  Future<void> login() async => await _loginRepository
      .login(emailAddress: emailAddress, password: password)
      .then((status) => loginStatus = status);

  Future<void> logout() async => await _loginRepository.logout();
}
