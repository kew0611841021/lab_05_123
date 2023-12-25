class Barber1 {
  final String thName;
  final String enName;
  final double price;
  final String value;

  Barber1(
      {required this.thName,
      required this.enName,
      required this.price,
      required this.value}); // RadioListTile Value

  static List<Barber1> getBarBer() {
    return [
      Barber1(
          thName: "ทรงผมคอมม่า",
          enName: "Comma hair",
          price: 120,
          value: "Comma hair"),
      Barber1(
          thName: "ทรงทูบล็อก",
          enName: "Two Block",
          price: 120,
          value: "Two Block"),
      Barber1(
          thName: "ทรงกะลาครอบ",
          enName: "French Crop",
          price: 120,
          value: "French Crop"),
    ];
  }
}
