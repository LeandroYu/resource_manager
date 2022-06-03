import 'package:firebase_auth/firebase_auth.dart';
import 'package:resource_manager/core/repository/login/login_repository.dart';

class LoginRepositoryImp implements LoginRepository {
  @override
  Future<String> registryUser({required String emailAddress, required String password}) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      return "sucess";
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return 'Senha inserida muito fraca';
      } else if (e.code == 'email-already-in-use') {
        return 'Usuário já registrado';
      } else {
        return "Falha ao realizar login! Tente novamente mais tarde";
      }
    } catch (e) {
      return "Falha ao realizar login! Tente novamente mais tarde";
    }
  }

  @override
  Future<String> login({required String emailAddress, required String password}) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(email: emailAddress, password: password);
      return "sucess";
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return "Nenhum usuário cadastrado encontrado";
      } else if (e.code == 'wrong-password') {
        return "Senha inválida";
      } else {
        print(e);
        return "Falha ao realizar login! Tente novamente mais tarde";
      }
    } catch (e) {
      print(e);
      return "Falha ao realizar login! Tente novamente mais tarde";
    }
  }

  @override
  Future<void> logout() async {
    await FirebaseAuth.instance.signOut();
  }
}
