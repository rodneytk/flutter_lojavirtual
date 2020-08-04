import 'package:flutter/material.dart';
import 'package:flutter_lojavirtual/models/page_manager.dart';
import 'package:provider/provider.dart';

class CustomDrawerTile extends StatelessWidget {
  const CustomDrawerTile({this.iconData, this.title, this.page});

  final IconData iconData;
  final String title;
  final int page;

  @override
  Widget build(BuildContext context) {
    final int currPage = context.watch<PageManager>().page;

    return InkWell(
      onTap: () {
        context.read<PageManager>().setPage(page);
      },
      child: SizedBox(
        height: 60,
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Icon(
                iconData,
                size: 32,
                color: currPage == page ? Colors.red : Colors.grey[700],
              ),
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                color: currPage == page ? Colors.red : Colors.grey[700],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
