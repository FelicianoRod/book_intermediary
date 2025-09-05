import 'dart:developer' as developer;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../entities/customer_entity.dart';
import '../providers/objectbox_provider.dart';

part 'customer_service.g.dart';

@riverpod
Future<List<CustomerEntity>> getCustomersSer(GetCustomersSerRef ref) async {
  try {
    final store = await ref.watch(storeObjectboxProvider.future);
    final customerBox = store.box<CustomerEntity>();
    final customersList = customerBox.getAll();
    developer.log("Clientes obtenidos ${customersList.length}");
    return customersList;
  } catch (e) {
    developer.log("Error al obtener todos los usuarios en service");
    return [];
  }
}