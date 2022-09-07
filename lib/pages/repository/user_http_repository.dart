import 'dart:convert';

import 'package:ephealth_desafio_flutter/model/user_model.dart';
import 'package:ephealth_desafio_flutter/repository/i_user_repository.dart';
import 'package:http/http.dart' as http;

class UserHttpRepository implements IUserRepository {
  @override
  Future<List<UserModel>> findAllUsers() async {
    final response =
        await http.get(Uri.parse('https://pastebin.com/raw/zPUtKAdx'));
    final List<dynamic> responseMap = jsonDecode(response.body);
    return responseMap
        .map<UserModel>((resp) => UserModel.fromMap(resp))
        .toList();
  }
}
