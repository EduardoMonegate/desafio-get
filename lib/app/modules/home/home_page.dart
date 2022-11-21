import 'package:buscakiapp/app/modules/home/controller/home_controller.dart';
import 'package:buscakiapp/app/modules/home/widgets/custom_alert_dialog.dart';
import 'package:buscakiapp/app/modules/home/widgets/custom_search_solicitation.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Desafio"),
      ),
      body: GetBuilder<HomeController>(
        init: HomeController(),
        builder: (controller) {
          return ListView(
            children: [
              CustomSearchSolicitation(
                onPressedIcon: () {
                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => CustomAlertDialog(
                      listSearch: controller.productsSearch,
                      selectedSearch: (cb) {
                        controller.setProduct(cb);
                      },
                      onChanged: (cb) {
                        controller.setProductsSearch(search: cb);
                      },
                    ),
                  );
                },
                onPressedCard: () {
                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => CustomAlertDialog(
                      listSearch: controller.productsSearch,
                      selectedSearch: (cb) {
                        controller.setProduct(cb);
                      },
                      onChanged: (cb) {
                        controller.setProductsSearch(search: cb);
                      },
                    ),
                  );
                },
                hintText: controller.product,
                onChanged: (cb) {
                  controller.searchProductForNumber(cb);
                }, hintTextNumber: '',
              ),
            ],
          );
        },
      ),
    );
  }
}
