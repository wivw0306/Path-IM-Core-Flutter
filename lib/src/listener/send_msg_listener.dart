/// 发送消息监听
class SendMsgListener {
  final Function(String clientMsgID)? onSuccess; // 发送成功
  final Function(String clientMsgID)? onFailed; // 发送失败
  final Function(String clientMsgID)? onLimit; // 发送限流

  SendMsgListener({
    this.onSuccess,
    this.onFailed,
    this.onLimit,
  });

  void success(String clientMsgID) {
    if (onSuccess != null) onSuccess!(clientMsgID);
  }

  void failed(String clientMsgID) {
    if (onFailed != null) onFailed!(clientMsgID);
  }

  void limit(String clientMsgID) {
    if (onLimit != null) onLimit!(clientMsgID);
  }
}
