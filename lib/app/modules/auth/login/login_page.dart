import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vakinha_burguer_mobile/app/core/ui/vakinha_ui.dart';
import 'package:vakinha_burguer_mobile/app/core/ui/widgets/vakinha_appbar.dart';
import 'package:vakinha_burguer_mobile/app/core/ui/widgets/vakinha_button.dart';
import 'package:vakinha_burguer_mobile/app/core/ui/widgets/vakinha_textfieldform.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VakinhaAppbar(
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: IntrinsicHeight(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Login',
                        style: context.textTheme.headline6?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: context.theme.primaryColorDark,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      VakinhaTextFormField(label: 'e-mail'),
                      const SizedBox(
                        height: 30,
                      ),
                      VakinhaTextFormField(label: 'senha'),
                      const SizedBox(
                        height: 50,
                      ),
                      Center(
                        child: VakinhaButton(
                          width: context.width,
                          onPressed: () {},
                          label: 'ENTRAR',
                        ),
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Não possui uma conta?'),
                          TextButton(
                              onPressed: () {
                                Get.toNamed('/auth/register');
                              },
                              child: Text(
                                'Cadastre-se',
                                style: VakinhaUI.textBold,
                              ))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
