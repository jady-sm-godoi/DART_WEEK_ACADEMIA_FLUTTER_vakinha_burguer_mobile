import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vakinha_burguer_mobile/app/core/bindings/application_bindings.dart';
import 'package:vakinha_burguer_mobile/app/core/ui/vakinha_ui.dart';
import 'package:vakinha_burguer_mobile/app/modules/splash/splash_page.dart';
import 'package:vakinha_burguer_mobile/app/routes/auth_routers.dart';
import 'package:vakinha_burguer_mobile/app/routes/splash_routers.dart';

void main() {
  runApp(const VakinhaBurguerMainApp());
}

class VakinhaBurguerMainApp extends StatelessWidget {
  const VakinhaBurguerMainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Vakinha Burger',
      theme: VakinhaUI.theme,
      initialBinding: ApplicationBindings(),
      getPages: [
        ...SplashRouters.routers,
        ...AuthRouters.routers,
      ],
    );
  }
}
