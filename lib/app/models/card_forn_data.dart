class CardData {
  String mobile;
  String dob;
  String cardNumber;
  String expDate;
  String cvv;

  CardData({
    required this.mobile,
    required this.dob,
    required this.cardNumber,
    required this.expDate,
    required this.cvv,
  });

  factory CardData.fromJson(Map<String, dynamic> json) {
    return CardData(
      mobile: json['mobile'],
      dob: json['dob'],
      cardNumber: json['cardNumber'],
      expDate: json['expDate'],
      cvv: json['cvv'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'mobile': mobile,
      'dob': dob,
      'cardNumber': cardNumber,
      'expDate': expDate,
      'cvv': cvv,
    };
  }
}
