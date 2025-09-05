import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Column(
        // children: [
          // Text("En Busca de Sobriedad - Plenitud AA"),
          body: _HomeScreenView()
        // ]
      );
    // );
  }
}

class _HomeScreenView extends StatelessWidget {
  const _HomeScreenView();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        _CustomListTile(
          title: "Vender",
          subtitle: "Realizar un pedido",
          location: "/order"
        ),
        _CustomListTile(
          title: "Ventas en progreso",
          subtitle: "Registro de ventas no terminadas.",
          location: "/sale_progress",
        ),
        _CustomListTile(
          title: "Historial",
          subtitle: "Historial de las ventas",
          location: "/history",
        ),
        _CustomListTile(
          title: "Proveedor",
          subtitle: "Estado del Proveedor",
          location: "/supplier",
        ),
        _CustomListTile(
          title: "Productos",
          subtitle: "Productos de plenitud",
          location: "/products",
        )
      ]
    );
  }
}

class _CustomListTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String location;

  const _CustomListTile({
    required this.title,
    required this.subtitle,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: const Icon(Icons.arrow_forward_ios_rounded),
      onTap: () => context.push(location),
    );
  }
}