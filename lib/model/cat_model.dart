class CategoryModel{
  int catId ;
  String name;
  String img;
  CategoryModel({ required  this.catId , required  this.name , required  this.img});
  CategoryModel.formJson(Map<String , dynamic>map):
        catId = map["id"],
        name = map["name"],
        img = map["image_link"];
}