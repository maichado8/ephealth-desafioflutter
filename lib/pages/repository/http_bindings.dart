import 'package:ephealth_desafio_flutter/pages/repository/http_controller.dart';
import 'package:ephealth_desafio_flutter/pages/repository/user_http_repository.dart';
import 'package:ephealth_desafio_flutter/repository/i_user_repository.dart';
import 'package:get/get.dart';

class HttpBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<IUserRepository>(UserHttpRepository());
    Get.put(HttpController(Get.find()));
  }
}
