class Items {
  
  late String img;
  late String img2;
  late String name;
  late String star;
  late String price;

  Items({required this.img, required this.img2, required this.name, required this.star, required this.price});
  
   Map<String, dynamic> toMap() {
    return {
      'img': img,
      'img2': img2,
      'name': name,
      'price': price,
      'star': star,
    };
  }

}
