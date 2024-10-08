import 'package:flutter/material.dart';
import 'package:my_app/consulta_cnpj.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(MediaQuery.of(context).size.width,
            MediaQuery.of(context).size.height),
        builder: (context, child) {
          return const MaterialApp(
            title: 'Consulta CNPJ',
            home: ConsultaCnpjPage(),
            debugShowCheckedModeBanner: false,
          );
        });
  }
}
