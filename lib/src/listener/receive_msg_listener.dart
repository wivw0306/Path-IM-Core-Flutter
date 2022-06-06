import 'package:path_im_core_flutter/src/proto/msg.pb.dart';

/// 接收消息监听
class ReceiveMsgListener {
  final Function(MsgData msg)? onReceiveMsg; // 接收消息
  final Function(MsgData msg)? onReceiveGroupMsg; // 接收群聊消息

  ReceiveMsgListener({
    this.onReceiveMsg,
    this.onReceiveGroupMsg,
  });

  void receiveMsg(MsgData msg) {
    if (onReceiveMsg != null) onReceiveMsg!(msg);
  }

  void receiveGroupMsg(MsgData msg) {
    if (onReceiveGroupMsg != null) onReceiveGroupMsg!(msg);
  }
}
