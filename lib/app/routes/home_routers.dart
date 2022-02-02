import 'package:get/get.dart';
import 'package:vakinha_burguer_mobile/app/modules/home/home_page.dart';
import 'package:vakinha_burguer_mobile/app/modules/home/home_bindings.dart';

class HomeRouters {
  HomeRouters._();

  static final routers = <GetPage>[
    GetPage(
      name: '/home',
      binding: HomeBindings(),
      page: () => const HomePage(),
    )
  ];
}
