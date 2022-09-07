import 'package:ephealth_desafio_flutter/model/user_model.dart';

abstract class IUserRepository {
  Future<List<UserModel>> findAllUsers();
}
