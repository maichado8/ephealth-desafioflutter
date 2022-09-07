import 'package:ephealth_desafio_flutter/model/user_model.dart';
import 'package:ephealth_desafio_flutter/pages/repository/http_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends GetView<HttpController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Center(
            child: Text(
              "lista de formulários",
              style: TextStyle(
                color: Color(0xff9fa7d4),
              ),
            ),
          )),
      body: controller.obx(
        (state) {
          return ListView.builder(
            itemCount: state.length,
            itemBuilder: (_, index) {
              final UserModel item = state[index];
              return ListTile(
                  title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Text(item.uid),
                  Text(item.name),
                  Text(item.birthday),
                  Text(item.sex),
                  Text(item.eligibilityStatus),
                  Text(item.fillStatus),
                  const Divider(
                    thickness: 2,
                  )
                ],
              ));
            },
          );
        },
        onError: (error) {
          return Center(child: Text(error));
        },
      ),
    );
  }
}
