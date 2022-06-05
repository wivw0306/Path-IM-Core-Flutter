/// 发送消息监听
class SendMsgListener {
  final Function(String clientMsgID)? onSuccess;
  final Function(String clientMsgID)? onFailed;
  final Function(String clientMsgID)? onLimit;

  SendMsgListener({
    this.onSuccess,
    this.onFailed,
    this.onLimit,
  });

  // 发送成功
  void success(String clientMsgID) {
    if (onSuccess != null) onSuccess!(clientMsgID);
  }

  // 发送失败
  void failed(String clientMsgID) {
    if (onFailed != null) onFailed!(clientMsgID);
  }

  // 发送限流
  void limit(String clientMsgID) {
    if (onLimit != null) onLimit!(clientMsgID);
  }
}
