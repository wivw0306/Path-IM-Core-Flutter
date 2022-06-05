import 'package:path_im_core_flutter/src/callback/group_callback.dart';
import 'package:path_im_core_flutter/src/callback/user_callback.dart';
import 'package:path_im_core_flutter/src/listener/connect_listener.dart';
import 'package:path_im_core_flutter/src/listener/receive_msg_listener.dart';
import 'package:path_im_core_flutter/src/listener/send_msg_listener.dart';
import 'package:path_im_core_flutter/src/proto/msg.pb.dart';
import 'package:path_im_core_flutter/src/socket/path_socket.dart';

class PathIMCore {
  factory PathIMCore() => _getInstance();

  static PathIMCore get instance => _getInstance();
  static PathIMCore? _instance;

  static PathIMCore _getInstance() {
    return _instance ??= PathIMCore._internal();
  }

  PathIMCore._internal();

  PathSocket? _pathSocket;

  /// 初始化
  void init({
    required String wsUrl,
    Duration pulseDuration = const Duration(seconds: 30),
    Duration retryDuration = const Duration(seconds: 3),
    required UserCallback userCallback,
    GroupCallback? groupCallback,
    ConnectListener? connectListener,
    SendMsgListener? sendMsgListener,
    ReceiveMsgListener? receiveMsgListener,
  }) async {
    _pathSocket = PathSocket(
      wsUrl: wsUrl,
      pulseDuration: pulseDuration,
      retryDuration: retryDuration,
      userCallback: userCallback,
      groupCallback: groupCallback,
      connectListener: connectListener,
      sendMsgListener: sendMsgListener,
      receiveMsgListener: receiveMsgListener,
    );
  }

  /// 登录
  void login({
    required String token,
    required String userID,
  }) async {
    await _pathSocket?.connect(token: token, userID: userID);
  }

  /// 登出
  void logout() async {
    await _pathSocket?.disconnect();
  }

  /// 是否登录
  bool isLogin() {
    return _pathSocket?.isConnect() ?? false;
  }

  /// 发送消息
  void sendMsg(MsgData msgData) {
    SendMsgReq sendMsgReq = SendMsgReq(
      msgData: msgData,
    );
    _pathSocket?.sendData(
      PathProtocol.sendMsgAndReceipt,
      sendMsgReq.writeToBuffer(),
    );
  }
}
