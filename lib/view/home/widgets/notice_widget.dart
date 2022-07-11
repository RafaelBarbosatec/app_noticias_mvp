import 'package:app_noticias_mvp/model/notice.dart';
import 'package:flutter/material.dart';

class NoticeWidget extends StatelessWidget {
  final Notice item;

  const NoticeWidget({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 16,
      ),
      child: Card(
        child: Container(
          margin: const EdgeInsets.all(10),
          child: ListTile(
            title: Text(item.tittle ?? 'Sem titulo'),
            subtitle: Text(
              item.description ?? '',
              maxLines: 3,
            ),
            leading: SizedBox(
              height: 80,
              width: 80,
              child: Image.network(
                'http://104.131.18.84/notice${item.urlImg}',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
