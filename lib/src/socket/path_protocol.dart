import 'dart:io';

class PathProtocol {
  static const int getMinAndMaxSeq = 1001; // 获取最新Seq
  static const int pullMsgBySeqList = 1002; // 使用Seq列表拉取消息
  static const int getMinAndMaxGroupSeq = 1003; // 获取群聊最新Seq
  static const int pullMsgByGroupSeqList = 1004; // 使用群聊Seq列表拉取消息
  static const int sendMsgAndReceipt = 2001; // 发送消息和回执
  static const int receivePushMsg = 2002; // 接收推送消息
  static const int receivePushGroupMsg = 2003; // 接收推送群聊消息

  // 获取当前平台
  static String getPlatform() {
    if (Platform.isIOS) {
      return "IOS";
    } else if (Platform.isAndroid) {
      return "Android";
    } else if (Platform.isWindows) {
      return "Windows";
    } else if (Platform.isMacOS) {
      return "OSX";
    } else if (Platform.isLinux) {
      return "Linux";
    }
    return "";
  }
}
