import 'package:flutter/material.dart';
import 'package:flutter_lojavirtual/common/custom_drawer/custom_drawer_tile.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const <Widget>[
          CustomDrawerTile(
            iconData: Icons.home,
            title: 'Inicio',
            page: 0,
          ),
          CustomDrawerTile(
            iconData: Icons.list,
            title: 'Produtos',
            page: 1,
          ),
          CustomDrawerTile(
            iconData: Icons.playlist_add_check,
            title: 'Meus Pedidos',
            page: 2,
          ),
          CustomDrawerTile(
            iconData: Icons.location_on,
            title: 'Lojas',
            page: 3,
          ),
        ],
      ),
    );
  }
}
