import 'package:flutter/material.dart';

class ResData {
  List<dynamic> list;
  Map<String, int> pagination;

  ResData({required this.list, required this.pagination});
}

class Pager with ChangeNotifier {
  Map<String, dynamic> params = {};
  int page = 1;
  int size = 20;
  int total = 0;
  List<dynamic> list = [];
  bool loading = false;
  bool finished = false;

  // 模拟计算属性
  bool get isLoading => loading;
  bool get isFinished => finished;
  int get loadmore => list.length;
  List<dynamic> get dataList => list;

  void onData(Function(List<dynamic>) callback) {
    // 实现数据更新时的回调逻辑
  }

  void onRefresh(
      {Map<String, dynamic>? params, bool clear = false, bool loading = true}) {
    // 刷新逻辑
    // ...
    notifyListeners();
  }

  // 实现拉取数据的逻辑
  Future<void> fetchData(
      {required Function(ResData) onSuccess,
      required Function(dynamic) onError}) async {
    // 模拟数据请求
    try {
      // 模拟数据
      var resData = ResData(
          list: List.generate(10, (index) => 'Item $index'),
          pagination: {'total': 50, 'page': page, 'size': size});
      onSuccess(resData);
    } catch (e) {
      onError(e);
    }
  }

  // 实现上拉加载更多
  void loadMore() {
    if (isFinished || isLoading) return;
    page++;
    fetchData(
      onSuccess: (resData) {
        list.addAll(resData.list);
        total = resData.pagination['total']!;
        finished = list.length >= total;
        loading = false;
        notifyListeners();
      },
      onError: (error) {
        // 处理错误
      },
    );
  }

  // 实现下拉刷新
  void refresh() {
    page = 1;
    fetchData(
      onSuccess: (resData) {
        list = resData.list;
        total = resData.pagination['total']!;
        finished = list.length >= total;
        loading = false;
        notifyListeners();
      },
      onError: (error) {
        // 处理错误
      },
    );
  }
}
