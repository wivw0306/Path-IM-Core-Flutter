/// 获取当前用户所在群聊的必需参数
class GroupCallback {
  final List<String> Function() onGroupIDList;
  final int Function(String groupID) onGroupMaxSeq;

  GroupCallback({
    required this.onGroupIDList,
    required this.onGroupMaxSeq,
  });

  // 返回群聊ID列表
  List<String> groupIDList() {
    return onGroupIDList();
  }

  // 返回最大群聊Seq
  int groupMaxSeq(String groupID) {
    return onGroupMaxSeq(groupID);
  }
}
