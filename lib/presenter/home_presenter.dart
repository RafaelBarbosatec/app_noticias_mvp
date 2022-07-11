import 'package:app_noticias_mvp/model/notice.dart';
import 'package:app_noticias_mvp/model/repository/notice_repository.dart';
import 'package:flutter/material.dart';

class HomePreseter extends ChangeNotifier {
  final NoticeRepository _repository;

  bool loading = true;

  List<Notice> noticeList = [];

  HomePreseter(this._repository);

  void load() async {
    noticeList = await _repository.getNoticeList();
    loading = false;
    notifyListeners();
  }

  void reload() {
    loading = true;
    noticeList.clear();
    notifyListeners();
    load();
  }
}
