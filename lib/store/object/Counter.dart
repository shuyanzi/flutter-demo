class Counter extends Object {
  int count;

  Counter({this.count});

  factory Counter.fromJson(Map<String, dynamic> json) {
    return Counter(
      count: json['count']
    );
  }

  Map<String ,dynamic> toJson() {
    final Map<String, dynamic> data = Map<String ,dynamic> ();
    data['count'] = this.count;
    return data;
  }

}