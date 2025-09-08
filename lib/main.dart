import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:objectbox/objectbox.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'data/providers/objectbox_provider.dart';
import 'data/services/objectbox/objectbox.g.dart';
import 'router/app_router.dart';

Admin? admin;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final dir = await getApplicationDocumentsDirectory();
  final store = await openStore(directory: p.join(dir.path, "plenitud"));
  await seedDatabase(store);
  admin = Admin(store);

  await dotenv.load(fileName: '.env');

  await Supabase.initialize(
    url: dotenv.env['SUPABASE_URL']!,
    anonKey: dotenv.env['SUPABASE_KEY']!,
  );

  runApp(
    ProviderScope(
      overrides: [
        storeObjectboxProvider.overrideWith((ref) async => store),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = ref.watch(appRouterProvider);

    return MaterialApp.router(
        title: 'Plenitud AA',
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
    );
  }
}