import 'dart:ffi';
import 'package:ephealth_desafio_flutter/repository/i_user_repository.dart';
import 'package:get/get.dart';

class HttpController extends GetxController with StateMixin {
  final IUserRepository _httpRepository;

  HttpController(this._httpRepository);

  @override
  void onInit() {
    super.onInit();
    findUsers();
  }

  void findUsers() async {
    change([], status: RxStatus.loading());
    try {
      final dados = await _httpRepository.findAllUsers();
      change(dados, status: RxStatus.success());
    } catch (e) {
      change([], status: RxStatus.error('Erro ao buscar dados!'));
    }
  }
}
