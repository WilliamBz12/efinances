class StatementsModel {
  String date;
  double value;
  String type;

  StatementsModel({
    this.date,
    this.type,
    this.value,
  });

  StatementsModel.fromJson(Map<String, dynamic> json) {
    this.date = json['date'];
    this.value = json['value'];
    this.type = json['type'];
  }
}