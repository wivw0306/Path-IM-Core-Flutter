import 'package:path_im_core_flutter/src/proto/msg.pb.dart';

/// 接收消息监听
class ReceiveMsgListener {
  final Function(MsgData msg)? onReceiveMsg;
  final Function(MsgData msg)? onReceiveGroupMsg;

  ReceiveMsgListener({
    this.onReceiveMsg,
    this.onReceiveGroupMsg,
  });

  // 接收消息
  void receiveMsg(MsgData msg) {
    if (onReceiveMsg != null) onReceiveMsg!(msg);
  }

  // 接收群聊消息
  void receiveGroupMsg(MsgData msg) {
    if (onReceiveGroupMsg != null) onReceiveGroupMsg!(msg);
  }
}
