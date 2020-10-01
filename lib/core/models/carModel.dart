class CarModel {
  CarModel({
    this.id,
    this.startYear,
    this.endYear,
    this.gender,
    this.countries,
    this.colors,
  });

  int id;
  int startYear;
  int endYear;
  String gender;
  List<String> countries;
  List<String> colors;

  CarModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    startYear = json['startYear'];
    endYear = json['endYear'];
    gender = json['gender'];
    countries = json['countries'];
    colors = json['colors'];
  }

  CarModel.toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['startYear'] = this.startYear;
    data['endYear'] = this.endYear;
    data['countries'] = this.countries.toList();
    data['colors'] = this.colors.toList();
  }
}
