/// 获取当前用户所在群聊的必需参数
class GroupCallback {
  final List<String> Function() onGroupIDList; // 返回所在群聊ID列表
  final int Function(String groupID) onGroupMaxSeq; // 返回所在群聊最大Seq

  GroupCallback({
    required this.onGroupIDList,
    required this.onGroupMaxSeq,
  });

  List<String> groupIDList() {
    return onGroupIDList();
  }

  int groupMaxSeq(String groupID) {
    return onGroupMaxSeq(groupID);
  }
}
