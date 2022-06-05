/// 获取当前用户必需参数
class UserCallback {
  final int Function() onMaxSeq;

  UserCallback({
    required this.onMaxSeq,
  });

  // 返回最大Seq
  int maxSeq() {
    return onMaxSeq();
  }
}
