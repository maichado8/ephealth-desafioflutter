import 'package:ephealth_desafio_flutter/core/routes.dart';
import 'package:ephealth_desafio_flutter/model/user_model.dart';
import 'package:ephealth_desafio_flutter/pages/repository/http_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends GetView<HttpController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0XFF2E3192),
        appBar: AppBar(
          backgroundColor: const Color(0XFF2E3192),
          toolbarHeight: 70,
          elevation: 0,
          title: Text(
            "Lista de Cadastros",
            style: TextStyle(
              color: Colors.white,
              fontSize: 22.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        body: SizedBox(
          child: Stack(
            children: [
              Container(
                padding: const EdgeInsets.all(30),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 1.0,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xffffffff),
                        Color.fromARGB(255, 231, 232, 238),
                      ]),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 30.h),
                      child: TextField(
                        decoration: InputDecoration(
                          isDense: true,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          hintText: 'Faça a busca mais rapida',
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Colors.black45,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
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
                                      padding: EdgeInsets.only(
                                        bottom: 30.h,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10.h),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Nome:  ${item.name}',
                                              style: TextStyle(
                                                color: Colors.black87,
                                                fontSize: 16.sp,
                                              ),
                                            ),
                                            Text(
                                              'ID:  ${item.uid}',
                                              style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 12.sp,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10.h,
                                            ),
                                            Text(
                                              'Data de aniversário:  ${item.birthday}',
                                              style: TextStyle(
                                                  color: Colors.black54,
                                                  fontSize: 16.sp),
                                            ),
                                            Text(
                                              'Sexo:  ${item.sex}',
                                              style: TextStyle(
                                                  color: Colors.black54,
                                                  fontSize: 16.sp),
                                            ),
                                            Text(
                                              'Status de Elegibilidade:  ${item.eligibilityStatus}',
                                              style: TextStyle(
                                                  color: Colors.black54,
                                                  fontSize: 16.sp),
                                            ),
                                            Text(
                                              'Status de Preenchimento:  ${item.fillStatus}',
                                              style: TextStyle(
                                                  color: Colors.black54,
                                                  fontSize: 16.sp),
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
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text(
                  "Maicon Machado",
                  style: TextStyle(color: Colors.blue[900]),
                ),
                accountEmail: const Text(
                  "126.204.049-32",
                  style: TextStyle(color: Colors.black38),
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.account_circle,
                  size: 30.sp,
                ),
                title: Text(
                  "Meus dados cadastrais",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 25.sp,
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                  Icons.info_outline_rounded,
                  size: 30.sp,
                ),
                title: Text(
                  "Sobre o aplicativo",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 25.sp,
                ),
                onTap: () {
                  debugPrint('Testando funcionamento');
                },
              ),
              Center(
                child: ListTile(
                  title: Text(
                    "Sair do aplicativo",
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0XFFFF3FFF),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                        '/', (Route<dynamic> route) => false);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
