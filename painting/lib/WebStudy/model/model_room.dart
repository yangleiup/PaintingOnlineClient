import 'dart:convert' show json;

class RoomInfo {
  int max_user;
  bool password_enable;
  String desc;
  String name;
  String password;
  String roomId;

  RoomInfo.fromParams(
      {this.max_user,
      this.password_enable,
      this.desc,
      this.name,
      this.password,
      this.roomId});

  factory RoomInfo(jsonStr) => jsonStr == null
      ? null
      : jsonStr is String
          ? new RoomInfo.fromJson(json.decode(jsonStr))
          : new RoomInfo.fromJson(jsonStr);

  RoomInfo.fromJson(jsonRes) {
    max_user = jsonRes['max_user'];
    password_enable = jsonRes['password_enable'];
    desc = jsonRes['desc'];
    name = jsonRes['name'];
    password = jsonRes['password'];
    roomId = jsonRes['room_id'];
  }

  @override
  String toString() {
    return '{"max_user": $max_user,"password_enable": ${password != null ? '${json.encode(password)}' : 'null'}_enable,"desc": ${desc != null ? '${json.encode(desc)}' : 'null'},"name": ${name != null ? '${json.encode(name)}' : 'null'},"password": ${password != null ? '${json.encode(password)}' : 'null'},"room_id": ${roomId != null ? '${json.encode(roomId)}' : 'null'}}';
  }
}
