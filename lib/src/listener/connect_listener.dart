/// 连接状态监听
class ConnectListener {
  final Function()? onConnecting;
  final Function()? onSuccess;
  final Function(dynamic error)? onError;
  final Function()? onClose;

  ConnectListener({
    this.onConnecting,
    this.onSuccess,
    this.onError,
    this.onClose,
  });

  // 连接中
  void connecting() {
    if (onConnecting != null) onConnecting!();
  }

  // 连接成功
  void success() {
    if (onSuccess != null) onSuccess!();
  }

  // 发生错误
  void error(dynamic error) {
    if (onError != null) onError!(error);
  }

  // 连接关闭
  void close() {
    if (onClose != null) onClose!();
  }
}
