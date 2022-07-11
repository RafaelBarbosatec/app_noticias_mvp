import 'package:app_noticias_mvp/presenter/home_presenter.dart';
import 'package:app_noticias_mvp/view/home/widgets/notice_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late HomePreseter _preseter;
  @override
  void initState() {
    _preseter = context.read<HomePreseter>();
    _preseter.load();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Principais noticias'),
      ),
      body: Consumer<HomePreseter>(
        builder: (context, presenter, _) {
          return Stack(
            children: [
              ListView.builder(
                itemCount: presenter.noticeList.length,
                itemBuilder: (context, index) {
                  return NoticeWidget(
                    item: presenter.noticeList[index],
                  );
                },
              ),
              if (presenter.loading)
                const Center(
                  child: CircularProgressIndicator(),
                )
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _preseter.reload,
      ),
    );
  }
}
