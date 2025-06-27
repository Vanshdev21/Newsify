import 'package:newsify/modal/catagory.dart';

List<CategoryModal> categoryData(){
  List<CategoryModal> category = [];

  CategoryModal categoryModal = new CategoryModal();
  categoryModal.catagoryName = "Business";
  categoryModal.catagoryImage = "images/business.jpg";
  category.add(categoryModal);

  categoryModal = new CategoryModal();
  categoryModal.catagoryName = "Entertainment";
  categoryModal.catagoryImage = "images/entertainment.jpg";
  category.add(categoryModal);

  categoryModal = new CategoryModal();
  categoryModal.catagoryName = "Science";
  categoryModal.catagoryImage = "images/science.jpg";
  category.add(categoryModal);

  categoryModal = new CategoryModal();
  categoryModal.catagoryName = "Sports";
  categoryModal.catagoryImage = "images/sports.jpg";
  category.add(categoryModal);

  categoryModal = new CategoryModal();
  categoryModal.catagoryName = "Technology";
  categoryModal.catagoryImage = "images/technology.jpg";
  category.add(categoryModal);

  return category;
}
