class BoardingModel {
  final String imagePath;
  final String title;
  final String subTitle;

  BoardingModel(
      {required this.imagePath, required this.title, required this.subTitle});
}

List<BoardingModel> boardingData = [
  BoardingModel(
    imagePath: "assets/images/Onboardingpage1.png",
    title: "Get food delivery to your doorstep asap",
    subTitle:
        "We have young and professional delivery team that will bring your food as soon possible to your doorstep",
  ),
  BoardingModel(
    imagePath: 'assets/images/Onboardingpage2.png',
    title: "Buy Any Food from your favorite restaurant",
    subTitle:
        "we are constantly adding your favourite restaurant throughout the territory and your area carefully selected",
  ),
];
