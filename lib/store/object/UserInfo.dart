class UserInfo extends Object {
  String name;

  UserInfo({this.name});

  factory UserInfo.fromJson(Map<String, dynamic> json) {
    return UserInfo(
      name: json['name']
    );
  }

  Map<String ,dynamic> toJson() {
    final Map<String, dynamic> data = Map<String ,dynamic> ();
    data['name'] = this.name;
    return data;
  }

}