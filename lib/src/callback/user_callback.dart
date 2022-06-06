/// 获取当前用户必需参数
class UserCallback {
  final Future<int> Function() onMaxSeq; // 返回当前用户最大Seq

  UserCallback({
    required this.onMaxSeq,
  });

  Future<int> maxSeq() {
    return onMaxSeq();
  }
}
