class FoodModel {

  String Detail, Image, Name, Price;

  FoodModel(this.Detail, this.Image, this.Name, this.Price);

  FoodModel.fromFirebase(Map<String, dynamic> parseJSON){
    Detail = parseJSON['Detail'];
    Image = parseJSON['Image'];
    Name = parseJSON['Name'];
    Price = parseJSON['Price'].toString();
  }

  
}