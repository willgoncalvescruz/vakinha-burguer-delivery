import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vakinha_burger_mobile/app/core/ui/widgets/vakinha_button.dart';
import 'package:vakinha_burger_mobile/app/modules/splash/splash_controller.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.black,
          //const Color(0xFF170E0E),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  width: double.infinity,
                  child: Image.asset(
                    "assets/images/lanche.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .15,
                      ),
                      Image.asset("assets/images/logo.png"),
                      const SizedBox(height: 60),
                      VakinhaButton(
                        label: 'ACESSAR',
                        //width: MediaQuery.of(context).size.width * .40,
                        width: context.heightTransformer(reducedBy: 60),
                        height: 40,
                        onPressed: () => controller.checkLogged(),
                      ),
                      //Container(color: Colors.red, width: 200, height: 200),
                    ],
                  ))
            ],
          )),
    );
  }
}
