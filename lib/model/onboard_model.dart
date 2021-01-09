class OnBoardModel{
  final int id;
  final String text;

  OnBoardModel({this.id, this.text});

  static List<OnBoardModel> list = [
    OnBoardModel(
      id: 1,
      text: "Sipariş etmek istediğiniz ürünü sepete ekleyiniz.",
    ),
    OnBoardModel(
      id: 2,
      text: "Sepete eklediğiniz ürünün ödemesini gerçekletiriniz.",
    ),
    OnBoardModel(
      id: 3,
      text: "Siparişin anında kapında bizi tercih ettiğiniz için teşekkür ederiz.",
    ),
  ];
}
