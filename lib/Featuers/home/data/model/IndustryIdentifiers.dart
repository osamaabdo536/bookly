/// type : "ISBN_13"
/// identifier : "9780130260369"

class IndustryIdentifiers {
  IndustryIdentifiers({
      this.type, 
      this.identifier,});

  IndustryIdentifiers.fromJson(dynamic json) {
    type = json['type'];
    identifier = json['identifier'];
  }
  String? type;
  String? identifier;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['type'] = type;
    map['identifier'] = identifier;
    return map;
  }

}