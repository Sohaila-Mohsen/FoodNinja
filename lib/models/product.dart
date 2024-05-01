class Restaurant {
  String restaurantName;
  String restaurantLogoPath;
  String restaurantDeliveryTime;
  Restaurant(
      {required this.restaurantName,
      required this.restaurantLogoPath,
      required this.restaurantDeliveryTime});
}

List<Restaurant> restaurants = [
  Restaurant(
      restaurantName: "Vegan Resto",
      restaurantLogoPath: "assets/images/Restaurant 1.png",
      restaurantDeliveryTime: "13 Min"),
  Restaurant(
      restaurantName: "Healthy Food",
      restaurantLogoPath: "assets/images/Restaurant 2.png",
      restaurantDeliveryTime: "1 Hour"),
  Restaurant(
      restaurantName: "Smart Resto",
      restaurantLogoPath: "assets/images/Restaurant 4.png",
      restaurantDeliveryTime: "34 Min"),
  Restaurant(
      restaurantName: "Good Food",
      restaurantLogoPath: "assets/images/Restaurant 3.png",
      restaurantDeliveryTime: "15 Min"),
  Restaurant(
      restaurantName: "Vegan Resto",
      restaurantLogoPath: "assets/images/Restaurant 5.png",
      restaurantDeliveryTime: "2 Hours"),
  Restaurant(
      restaurantName: "Healthy Food",
      restaurantLogoPath: "assets/images/Resturant 6.png",
      restaurantDeliveryTime: "30 Min"),
  Restaurant(
      restaurantName: "Good Food",
      restaurantLogoPath: "assets/images/Restaurant 1.png",
      restaurantDeliveryTime: "20 Min"),
  Restaurant(
      restaurantName: "Smart Resto",
      restaurantLogoPath: "assets/images/Restaurant 3.png",
      restaurantDeliveryTime: "1 Hour"),
];
