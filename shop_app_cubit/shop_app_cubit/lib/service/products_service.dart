import 'package:shop_app_cubit/model/product.dart';

class ProductsService {
  const ProductsService();

  Future<List<Product>> getProducts() async => [
        Product(
          id: 1,
          artistName: 'Caspar David Friedrich',
          paintingName: 'Abbey in the Oak forest',
          price: 110,
          image: 'assets/images/friedrich_abbey_in_the_oak_forest.jpg',
        ),
        Product(
          id: 2,
          artistName: 'Caspar David Friedrich',
          paintingName: 'Eldena monastery ruins near Greifswald',
          price: 120,
          image:
              'assets/images/friedrich_eldena_monastery_ruins_near_greifswald.jpg',
        ),
        Product(
          id: 3,
          artistName: 'Caspar David Friedrich',
          paintingName: 'Giant mountains',
          price: 130,
          image: 'assets/images/friedrich_giant_mountains.jpg',
        ),
        Product(
          id: 4,
          artistName: 'Caspar David Friedrich',
          paintingName: 'Sunset',
          price: 140,
          image: 'assets/images/friedrich_sunset.jpg',
        ),
        Product(
          id: 5,
          artistName: 'Caspar David Friedrich',
          paintingName: 'Two men contemplating the moon',
          price: 150,
          image: 'assets/images/friedrich_two_men_contemplating_the_moon.jpeg',
        ),
        Product(
          id: 6,
          artistName: 'Salvador Dali',
          paintingName: 'Elephants',
          price: 160,
          image: 'assets/images/dali_elephants.jpg',
        ),
        Product(
          id: 7,
          artistName: 'Salvador Dali',
          paintingName: 'Face of war',
          price: 170,
          image: 'assets/images/dali_face_of_war.jpg',
        ),
        Product(
          id: 8,
          artistName: 'Salvador Dali',
          paintingName: 'The great masturbator',
          price: 180,
          image: 'assets/images/dali_the_great_masturbator.jpg',
        ),
        Product(
          id: 9,
          artistName: 'Leonardo da Vinci',
          paintingName: 'Salvator Mundi',
          price: 190,
          image: 'assets/images/da_vinci_salvator_mundi.jpg',
        ),
        Product(
          id: 10,
          artistName: 'Leonardo da Vinci',
          paintingName: 'The lady with an Ermine',
          price: 200,
          image: 'assets/images/da_vinci_the_lady_with_an_ermine.jpg',
        ),
      ];
}
