import 'dart:developer' as developer;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/models/customer_model.dart';
import '../entities/customer_entity.dart';
import '../services/customer_service.dart';

part 'customer_repository.g.dart';

Customer toModel(CustomerEntity entity) {
  return Customer(
    id: entity.id,
    name: entity.name,
  );
}

@riverpod
Future<List<Customer>> getCustomersRep(GetCustomersRepRef ref) async {
  try {
    final getCustomersSer = await ref.watch(getCustomersSerProvider.future);
    return getCustomersSer.map(toModel).toList();
    // return getCustomersSer.value.map(toModel).toList();
  } catch (e) {
    developer.log("Error al obtener los clientes en CustomerRepository");
    return [];
  }

}
