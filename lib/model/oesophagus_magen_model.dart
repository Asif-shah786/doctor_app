class OesophagusMagenModel {
  String? image;

  OesophagusMagenModel({this.image});

  OesophagusMagenModel.fromJson(Map<String, dynamic> json) {
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    return data;
  }
}
