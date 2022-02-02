import 'package:vakinha_burguer_mobile/app/models/user_model.dart';

import 'auth_repository_impl.dart';

abstract class AuthRepository {
  Future<UserModel> login(String email, String password);
  Future<UserModel> register(String name, String email, String password);
}
