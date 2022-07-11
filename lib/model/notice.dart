class Notice {
  String? id;
  String? tittle;
  String? description;
  String? urlImg;
  String? link;
  String? origin;
  String? category;
  String? date;

  Notice({
    this.id,
    this.tittle,
    this.description,
    this.urlImg,
    this.link,
    this.origin,
    this.category,
    this.date,
  });

  Notice.fromJson(Map<String, dynamic> json) {
    this.id = json["id"];
    this.tittle = json["tittle"];
    this.description = json["description"];
    this.urlImg = json["url_img"];
    this.link = json["link"];
    this.origin = json["origin"];
    this.category = json["category"];
    this.date = json["date"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["id"] = this.id;
    data["tittle"] = this.tittle;
    data["description"] = this.description;
    data["url_img"] = this.urlImg;
    data["link"] = this.link;
    data["origin"] = this.origin;
    data["category"] = this.category;
    data["date"] = this.date;
    return data;
  }
}
