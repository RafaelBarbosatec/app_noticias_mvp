import 'dart:convert';

import 'package:app_noticias_mvp/model/notice.dart';
import 'package:http/http.dart' as http;

class NoticeRepository {
  
  Future<List<Notice>> getNoticeList() {
    final uri = Uri.parse('http://104.131.18.84/notice/news/recent');
    return http.get(uri).then((value) {
      if (value.statusCode == 200) {
        Map json = jsonDecode(value.body);

        return (json['data'] as List).map<Notice>((e) {
          return Notice.fromJson(e);
        }).toList();
      }

      return [];
    });
  }
}
