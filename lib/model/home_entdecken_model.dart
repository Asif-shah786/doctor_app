class EntdeckenModel {
  String? image;
  String? title;

  EntdeckenModel({this.image, this.title});

  EntdeckenModel.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['title'] = this.title;
    return data;
  }
}
