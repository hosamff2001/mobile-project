class OnBradingModel {
  final String title;
  final String description;
  final String image;

  OnBradingModel({
    required this.title,
    required this.description,
    required this.image,
  });
}

List<OnBradingModel> onBradingModel = [
  OnBradingModel(
    title: 'Choose Products',
    description:
        'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
    image: 'assets/image/onborading/onborading1.png',
  ),
  OnBradingModel(
    title: 'Make Payment',
    description:
        'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
    image: 'assets/image/onborading/onborading2.png',
  ),
  OnBradingModel(
    title: 'Get Your Order',
    description:
        'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
    image: 'assets/image/onborading/onboraging3.png',
  ),
];
