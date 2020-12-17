class PokemonList {
  String code;
  String ptcgoCode;
  String name;
  String series;
  int totalCards;
  bool standardLegal;
  bool expandedLegal;
  String releaseDate;
  String symbolUrl;
  String logoUrl;
  String updatedAt;

  PokemonList(
      {this.code,
      this.ptcgoCode,
      this.name,
      this.series,
      this.totalCards,
      this.standardLegal,
      this.expandedLegal,
      this.releaseDate,
      this.symbolUrl,
      this.logoUrl,
      this.updatedAt});

  PokemonList.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    ptcgoCode = json['ptcgoCode'];
    name = json['name'];
    series = json['series'];
    totalCards = json['totalCards'];
    standardLegal = json['standardLegal'];
    expandedLegal = json['expandedLegal'];
    releaseDate = json['releaseDate'];
    symbolUrl = json['symbolUrl'];
    logoUrl = json['logoUrl'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['ptcgoCode'] = this.ptcgoCode;
    data['name'] = this.name;
    data['series'] = this.series;
    data['totalCards'] = this.totalCards;
    data['standardLegal'] = this.standardLegal;
    data['expandedLegal'] = this.expandedLegal;
    data['releaseDate'] = this.releaseDate;
    data['symbolUrl'] = this.symbolUrl;
    data['logoUrl'] = this.logoUrl;
    data['updatedAt'] = this.updatedAt;
    return data;
  }
}
