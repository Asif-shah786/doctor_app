class LaparoskopischeCholezystektomieModel {
  String? image;

  LaparoskopischeCholezystektomieModel({this.image});

  LaparoskopischeCholezystektomieModel.fromJson(Map<String, dynamic> json) {
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    return data;
  }
}
