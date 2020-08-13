import 'package:flutter/material.dart';
import 'package:flutter_lojavirtual/common/custom_drawer/custom_drawer.dart';
import 'package:flutter_lojavirtual/models/page_manager.dart';
import 'package:flutter_lojavirtual/screens/login/login_screen.dart';
import 'package:provider/provider.dart';

class BaseScreen extends StatelessWidget {
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) {
        return PageManager(pageController);
      },
      child: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: <Widget>[
          // Scaffold(
          //   drawer: CustomDrawer(),
          //   appBar: AppBar(
          //     title: const Text('Inicio'),
          //   ),
          // ),
          LoginScreen(),
          Scaffold(
            drawer: CustomDrawer(),
            appBar: AppBar(
              title: const Text('Produtos'),
            ),
          ),
          Scaffold(
            drawer: CustomDrawer(),
            appBar: AppBar(
              title: const Text('Meus Pedidos'),
            ),
          ),
          Scaffold(
            drawer: CustomDrawer(),
            appBar: AppBar(
              title: const Text('Lojas'),
            ),
          ),
        ],
      ),
    );
  }
}
