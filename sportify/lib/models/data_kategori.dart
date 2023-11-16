class dataKategori {
  int? id;
  String? kategori;
  String? ico;

  dataKategori(
      {this.id, this.kategori, this.ico});

  dataKategori.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    kategori = json['kategori'];
    ico = json['ico'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['kategori'] = this.kategori;
    data['ico'] = this.ico;
    return data;
  }
}