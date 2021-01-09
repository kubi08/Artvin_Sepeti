class OnBoardModel{
  final int id;
  final String text;

  OnBoardModel({this.id, this.text});

  static List<OnBoardModel> list = [
    OnBoardModel(
      id: 1,
      text: "Yemek istediğiniz ürünü bulunuz.",
    ),
    OnBoardModel(
      id: 2,
      text: "Seçtiğiniz ürünü sepetinize ekleyiniz",
    ),
    OnBoardModel(
      id: 3,
      text: "Ödeme işleminizi yapabilirsiniz",
    ),
  ];
}
