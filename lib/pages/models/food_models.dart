class Food {
  final int id;
  final String imageUrl;
  final String name;
  final String details;
  final String price;

  Food({
    required this.id,
    required this.imageUrl,
    required this.name,
    required this.details,
    required this.price,
  });
}

final Food menuFood1 = Food(
    id: 0,
    imageUrl: '',
    name: 'Beef Burger',
    details: 'Burger with Extra cheese',
    price: '15.99');
final Food menuFood2 = Food(
    id: 1,
    imageUrl: '',
    name: 'Mushroom Burger',
    details: 'A Portobello Burger',
    price: '14.99');
final Food menuFood3 = Food(
    id: 2,
    imageUrl: '',
    name: 'Fried Rice',
    details: 'Ghana Recipe rice',
    price: '20.99');
final Food menuFood4 = Food(
    id: 3,
    imageUrl: '',
    name: 'Jollof Rice',
    details: 'Ghanaian Recipe',
    price: '20.99');
