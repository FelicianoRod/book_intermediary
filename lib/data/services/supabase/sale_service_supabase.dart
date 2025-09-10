import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'dart:developer' as developer;

import '../../../domain/models/bulk_sale_model.dart';
import '../../../domain/models/sale_progress.dart';
import '../../../domain/models/single_sale_model.dart';
import 'supabase.dart';

part 'sale_service_supabase.g.dart';

@riverpod
Future<List<BulkSale>> bulkSaleService(BulkSaleServiceRef ref) async {
  final supabase = ref.watch(supabaseProvider);

  final data = await supabase
    .from('bulk_sale')
    .select('''
      id,
      amount_paid,
      customer ( id, name ),
      sale_status ( id, description )
    ''')
    .eq('active', true);

  final bulkSale = data.map((e) => BulkSale.fromJson(e)).toList();
  return bulkSale;
}

@riverpod
Future<List<SingleSale>> singleSaleService(
    SingleSaleServiceRef ref) async {
  final supabase = ref.watch(supabaseProvider);

  final data = await supabase
    .from('single_sale')
    .select('''
      amount,
      product (
        id, code, name, donation, category ( name )
      )
    ''');

  final singleSaleList = data.map((e) => SingleSale.fromJson(e)).toList();

  return singleSaleList;
}

@riverpod
class BulkSaleDetailService extends _$BulkSaleDetailService {
  @override
  FutureOr<List<SingleSale>> build(int idBulkSale) async {
    try {
      final supabase = ref.watch(supabaseProvider);

      developer.log('Realizando la consulta para el id: $idBulkSale - Service');

      final data = await supabase
        .from('single_sale')
        .select('''
          id,
          amount,
          product (
            id, code, name, donation, category ( name )
          )
        ''')
        .eq('bulk_sale_id', idBulkSale);

      developer.log('Datos obtenidos exitosamente - Service');
      developer.log(data.length.toString());

      final singleSaleList = data.map((e) => SingleSale.fromJson(e)).toList();

      developer.log('Listo para devolver los datos - Service');
      developer.log('${singleSaleList.map((item) => item.product.name).toList()} - Service');
      // return singleSaleList;
      // return [];
      return singleSaleList;

    } catch (e) {
      developer.log('$e - ERROR EN SERVICE');
      return [];
    }
  }
}

@riverpod
Future<List<SingleSale>> test(TestRef ref, int idBulkSale) async {
  final supabase = ref.watch(supabaseProvider);

  developer.log('Realizando la consulta para el id: $idBulkSale - Service');

  final data = await supabase
      .from('single_sale')
      .select('''
          id,
          amount,
          product (
            id, code, name, donation, category ( name )
          )
        ''')
      .eq('bulk_sale_id', idBulkSale);

  developer.log('Datos obtenidos exitosamente - Service');
  developer.log(data.length.toString());

  final singleSaleList = data.map((e) => SingleSale.fromJson(e)).toList();

  developer.log('Listo para devolver los datos - Service');
  developer.log('${singleSaleList.map((item) => item.product.name).toList()} - Service');
  // return singleSaleList;
  // return [];
  return singleSaleList;
}