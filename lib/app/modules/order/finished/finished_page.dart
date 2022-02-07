import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vakinha_burger_mobile/app/core/ui/widgets/vakinha_button.dart';
import 'package:vakinha_burger_mobile/app/models/order_pix.dart';

class FinishedPage extends StatelessWidget {
  final OrderPix _orderPix = Get.arguments;
  FinishedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
/*       appBar: AppBar(
        title: const Text(''),
      ), */
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Spacer(),
                Image.asset(
                  'assets/images/logo_rounded.png',
                  width: context.widthTransformer(reducedBy: 40),
                  height: context.heightTransformer(reducedBy: 70),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'Pedido realizado com sucesso! Clique no botão abaixo para acesso ao QRCode do PIX',
                    textAlign: TextAlign.center,
                    style: context.textTheme.headline6?.copyWith(
                        color: context.theme.primaryColorDark,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: context.widthTransformer(reducedBy: 30),
                  child: VakinhaButton(
                    label: 'PIX',
                    onPressed: () {
                      Get.toNamed('/orders/pix', arguments: _orderPix);
                    },
                    color: context.theme.primaryColorDark,
                  ),
                ),
                const Spacer(),
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  child: SizedBox(
                    width: context.widthTransformer(reducedBy: 10),
                    child: VakinhaButton(
                      onPressed: () {
                        Get.offAllNamed('/home');
                      },
                      label: "FECHAR",
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
