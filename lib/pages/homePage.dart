import 'package:ephealth_desafio_flutter/model/user_model.dart';
import 'package:ephealth_desafio_flutter/pages/repository/http_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

class HomePage extends GetView<HttpController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ConvexAppBar(
        activeColor: const Color.fromARGB(255, 159, 167, 212),
        color: const Color(0xff061566),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        items: const [
          TabItem(icon: Icons.person, title: 'Dev'),
          TabItem(icon: Icons.restart_alt, title: 'Atualizar'),
          TabItem(icon: Icons.output_rounded, title: 'Sair'),
        ],
        onTap: (int i) => print('click index=$i'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xffffffff),
                Color.fromARGB(121, 198, 203, 223),
              ]),
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(
                top: 70,
              ),
              child: const Text(
                "Formulário de cadastros",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              child: const TextField(
                decoration: InputDecoration(prefixIcon: Icon(Icons.search)),
              ),
            ),
            controller.obx(
              (state) {
                return Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: state.length,
                    itemBuilder: (_, index) {
                      final UserModel item = state[index];
                      return Column(
                        children: [
                          ListTile(
                            title: Padding(
                              padding: const EdgeInsets.only(
                                bottom: 30,
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Nome:  ${item.name}',
                                      style: const TextStyle(
                                        color: Colors.black87,
                                        fontSize: 16,
                                      ),
                                    ),
                                    Text(
                                      'ID:  ${item.uid}',
                                      style: const TextStyle(
                                        color: Colors.black54,
                                        fontSize: 12,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Data de aniversário:  ${item.birthday}',
                                      style: const TextStyle(
                                        color: Colors.black54,
                                      ),
                                    ),
                                    Text(
                                      'Sexo:  ${item.sex}',
                                      style: const TextStyle(
                                        color: Colors.black54,
                                      ),
                                    ),
                                    Text(
                                      'Status de Elegibilidade:  ${item.eligibilityStatus}',
                                      style: const TextStyle(
                                        color: Colors.black54,
                                      ),
                                    ),
                                    Text(
                                      'Status de Preenchimento:  ${item.fillStatus}',
                                      style: const TextStyle(
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                );
              },
              onError: (error) {
                return Center(child: Text(error));
              },
            ),
          ],
        ),
      ),
    );
  }
}
