import 'package:path_im_core_flutter/src/callback/group_callback.dart';
import 'package:path_im_core_flutter/src/callback/user_callback.dart';
import 'package:path_im_core_flutter/src/constant/conversation_type.dart';
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
    ReceiveMsgListener? receiveMsgListener,
    SendMsgListener? sendMsgListener,
  }) async {
    _pathSocket = PathSocket(
      wsUrl: wsUrl,
      pulseDuration: pulseDuration,
      retryDuration: retryDuration,
      userCallback: userCallback,
      groupCallback: groupCallback,
      connectListener: connectListener,
      receiveMsgListener: receiveMsgListener,
      sendMsgListener: sendMsgListener,
    );
  }

  /// 登录
  void login({
    required String token,
    required String userID,
  }) async {
    await _pathSocket?.connect(
      token: token,
      userID: userID,
    );
  }

  /// 登出
  void logout() async {
    await _pathSocket?.disconnect();
  }

  /// 是否登录
  bool isLogin() {
    return _pathSocket?.isConnect() ?? false;
  }

  /// 发送单聊消息
  void sendSingleMsg({
    required String clientMsgID,
    required String sendID,
    required String receiveID,
    required int contentType,
    required List<int> content,
    List<String>? atUserIDList,
    required int clientTime,
    OfflinePush? offlinePush,
    MsgOptions? msgOptions,
  }) {
    SendMsgReq sendMsgReq = SendMsgReq(
      msgData: MsgData(
        clientMsgID: clientMsgID,
        conversationType: ConversationType.single,
        sendID: sendID,
        receiveID: receiveID,
        contentType: contentType,
        content: content,
        atUserIDList: atUserIDList,
        clientTime: clientTime,
        offlinePush: offlinePush,
        msgOptions: msgOptions,
      ),
    );
    _pathSocket?.sendData(
      PathProtocol.sendMsgAndReceipt,
      sendMsgReq.writeToBuffer(),
    );
  }

  /// 发送群聊消息
  void sendGroupMsg({
    required String clientMsgID,
    required String sendID,
    required String receiveID,
    required int contentType,
    required List<int> content,
    List<String>? atUserIDList,
    required int clientTime,
    OfflinePush? offlinePush,
    MsgOptions? msgOptions,
  }) {
    SendMsgReq sendMsgReq = SendMsgReq(
      msgData: MsgData(
        clientMsgID: clientMsgID,
        conversationType: ConversationType.group,
        sendID: sendID,
        receiveID: receiveID,
        contentType: contentType,
        content: content,
        atUserIDList: atUserIDList,
        clientTime: clientTime,
        offlinePush: offlinePush,
        msgOptions: msgOptions,
      ),
    );
    _pathSocket?.sendData(
      PathProtocol.sendMsgAndReceipt,
      sendMsgReq.writeToBuffer(),
    );
  }
}
