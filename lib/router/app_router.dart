import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:servicio_sobriedad_plenitud/ui/products/widgets/products_screen.dart';
import 'package:servicio_sobriedad_plenitud/ui/sale_in_progress/widgets/sale_progress_screen.dart';

import '../ui/menu/widgets/menu_screen.dart';
import '../ui/sell/widgets/sell_screen.dart';
import '../ui/sell/widgets/successful_purchased_screen.dart';
import '../ui/supplier/widgets/supplier_screen.dart';

part 'app_router.g.dart';

@riverpod
GoRouter appRouter(AppRouterRef ref) {
  return GoRouter(routes: [
    GoRoute(
        path: '/',
        builder: (context, state) => const MenuScreen()
    ),
    GoRoute(
        path: '/products',
        builder: (context, state) => const ProductScreen()
    ),
    GoRoute(
      path: '/order',
      builder: (context, state) => const SellScreen(),
      routes: [
        GoRoute(
          path: '/successful_purchased',
          builder: (context, state) => const SuccessfulPurchasedScreen(),
        ),
      ],
    ),
    GoRoute(
      path: '/supplier',
      builder: (context, state) => const SupplierScreen(),
    ),
    GoRoute(
      path: '/sale_progress',
      builder: (context, state) => const SaleProgressScreen(),
    )
  ]);
}