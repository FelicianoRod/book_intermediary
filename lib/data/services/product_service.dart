import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:servicio_sobriedad_plenitud/data/services/supabase/supabase.dart';
import 'dart:developer' as developer;

import '../../domain/models/product_model.dart';

part 'product_service.g.dart';

@riverpod
Future<List<Product>> getProductsSer(GetProductsSerRef ref) async {
  final supabase = ref.watch(supabaseProvider);

  final data = await supabase
    .from('product')
    .select('''
    id,
    code,
    name,
    donation,
    category ( name )
    ''');

  final product = data.map((e) => Product.fromJson(e)).toList();

  return product;
}