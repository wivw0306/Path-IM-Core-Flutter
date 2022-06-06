/// 获取当前用户所在群聊的必需参数
class GroupCallback {
  final Future<List<String>> Function() onGroupIDList; // 返回所在群聊ID列表
  final Future<int> Function(String groupID) onGroupMaxSeq; // 返回所在群聊最大Seq

  GroupCallback({
    required this.onGroupIDList,
    required this.onGroupMaxSeq,
  });

  Future<List<String>> groupIDList() {
    return onGroupIDList();
  }

  Future<int> groupMaxSeq(String groupID) {
    return onGroupMaxSeq(groupID);
  }
}
