import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';
import 'dart:developer' as developer;

import '../../../data/repositories/customer_repository.dart';
import '../../../data/repositories/product_repository.dart';
import '../../../data/repositories/sale_repository.dart';
import '../../../domain/models/customer_model.dart';
import '../../../domain/models/product_cart_model.dart';
import '../../../domain/models/product_model.dart';
import '../../../domain/models/successful_purchase_model.dart';

part 'sell_viewmodel.g.dart';

const uuid = Uuid();

@riverpod
List<Customer> customersList(CustomersListRef ref) {
  final customers = ref.watch(getCustomersRepProvider);

  return customers.value ?? [];
}

@Riverpod(keepAlive: true)
class SelectedCustomer extends _$SelectedCustomer {
  @override
  Customer? build() => null;

  void selectCustomer(Customer customer) {
    state = customer;
  }
}

@riverpod
List<Product> productsList(ProductsListRef ref) {
  final productRep = ref.watch(getProductsRepProvider);


  return productRep.value ?? [];
}

@Riverpod(keepAlive: true)
class ShoppingCart extends _$ShoppingCart {
  @override
  List<ProductCart> build() {
    return [];
  }

  void addToCart(Product product) {
    var exist = false;

    state = state.map((item) {
      if (item.product.id == product.id) {
        item = item.copyWith(
          amount: item.amount + 1,
        );
        exist = true;
      }
      return item;
    }).toList();

    if (exist == false) {
      state = [
        ...state,
        ProductCart(
          product: product,
          amount: 1,
        ),
      ];
    }

    exist = false;
  }

  void addOne(ProductCart productCart) {
    state = state.map((item) {
      if (productCart.product.id == item.product.id) {
        item = item.copyWith(
          amount: item.amount + 1
        );
      }
      return item;
    }).toList();
  }

  void removeOne(ProductCart productCart) {
    if (productCart.amount > 1) {
      state = state.map((item) {
        if (productCart.product.id == item.product.id) {
          item = item.copyWith(
              amount: item.amount - 1
          );
        }
        return item;
      }).toList();
    }
  }

  void deleteItem(ProductCart productCart) {
    state = state.where((item) => item != productCart).toList();
  }

}

@riverpod
class AdvancePayment extends _$AdvancePayment {
  late final TextEditingController controller;

  @override
  double? build() {
    controller = TextEditingController();

    controller.addListener(() {
      final value = double.tryParse(controller.text);
      state = value;
    });

    return null;
  }

  // void update(String newValue) {
  //   state = newValue;
  // }
}

/*------------------------------------------------------------------------------
FUNCIONALIDAD PRINCIPAL: comprar carrito
------------------------------------------------------------------------------*/

@riverpod
class CartPurchaseViewModel extends _$CartPurchaseViewModel {
  @override
  FutureOr<void> build() {

  }

  Future<void> cartPurchase() async {
    final errorList = ref.read(errorListProvider.notifier);

    errorList.reset();

    state = const AsyncLoading();

    try {
      final cartPurchaseRepository = ref.read(cartPurchaseRepProvider.notifier);
      final vendor = 1;
      final advancePayment = ref.watch(advancePaymentProvider);
      final customer = ref.watch(selectedCustomerProvider);
      final shoppingCart = ref.watch(shoppingCartProvider);

      if (shoppingCart.isEmpty) {
        errorList.addError("No se ha puesto nada en el carrito");
      }

      if (customer == null) {
        errorList.addError("No has seleccionado al cliente");
      }

      if (shoppingCart.isNotEmpty) {
        if (customer != null) {
          cartPurchaseRepository.cartPurchase(1, customer.id, advancePayment ?? 0, shoppingCart);
          developer.log("Se realizo el envío");
        }
      }
    } catch (e, st) {
      state = AsyncError(e, st);
    }


    // saleRepository.sellShoppingCartRep(
    //   vendorId,
    //   customerId,
    //   paid,
    //   itemPurchasedIds
    // );
    // return true;
  }
}

@riverpod
class ErrorList extends _$ErrorList {
  @override
  List<String> build() {
    return [];
  }

  void addError(String error) {
    state = [
      ...state,
      error
    ];
  }

  void reset() {
    state = [];
  }

  void removeError(String error) {
    state = state.where((e) => e != error).toList();
  }
}


// @riverpod
// class CartPurchase extends _$CartPurchase {
//   @override
//   SuccessfulPurchase? build() {
//     return null;
//   }
//
//   void purchase() {
//     final saleRepository = ref.watch();
//   }
// }