import 'package:get/get.dart';

class HomeController extends GetxController {
  List<String> products = [
    "1 - Bike",
    "2 - Moto",
    "3 - Carro",
    "4 - Barco",
    "5 - Avião",
  ];

  RxList productsSearch = [].obs;

  String product = "Digite um produto";

  searchProductForNumber(String searchNumber) {
    List search = searchProducts(search: searchNumber);

    if (search.isNotEmpty) {
      product = search.first;
    } else {
      product = "Produto não encontrado";
    }
    update();
  }

  List<String> searchProducts({String? search}) {
    return search == null
        ? products
        : products
            .where(
              (element) => element.toLowerCase().contains(search.toLowerCase()),
            )
            .toList();
  }

  setProduct(String value) {
    product = value;
    update();
  }

  setProductsSearch({String? search}) {
    productsSearch.value = searchProducts(search: search);
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    productsSearch.value = searchProducts();
  }
}
