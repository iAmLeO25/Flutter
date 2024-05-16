class PlaceCardModel {
  String img;
  String title;
  String description;

  PlaceCardModel(
      {required this.img, required this.description, required this.title});
}

List<PlaceCardModel> placesList = [
  PlaceCardModel(
      img:
      "https://cdn.pixabay.com/photo/2023/01/25/22/46/grey-reef-shark-7744765_640.jpg",
      description: "description 1",
      title: "title 1"),
  PlaceCardModel(
      img:
      "https://cdn.pixabay.com/photo/2022/12/02/21/20/blue-7631674_640.jpg",
      description: "description 2",
      title: "title 2"),
  PlaceCardModel(
      img:
      "https://cdn.pixabay.com/photo/2022/11/07/21/31/rose-7577265_640.jpg",
      description: "description 1",
      title: "title 3"),
];