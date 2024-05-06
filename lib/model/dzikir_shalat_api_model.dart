class DzikirShalatModel {
  String? arab;
  String? indo;
  String? type;
  String? ulang;

  DzikirShalatModel({
    required this.arab,
    required this.indo,
    required this.type,
    required this.ulang,
  });

  DzikirShalatModel.fromJson(Map<String, dynamic> json) {
    arab = json['arab'];
    indo = json['indo'];
    type = json['type'];
    ulang = json['ulang'];
  }
}
