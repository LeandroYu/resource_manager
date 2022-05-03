abstract class LoginRepository {
  Future<String> registryUser(
      {required String emailAddress, required String password});

  Future<String> login(
      {required String emailAddress, required String password});

  Future<void> logout();
}
