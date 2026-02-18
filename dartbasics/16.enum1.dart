enum Pet { dog, cat, bird }

void main() {
  final myPet = Pet.dog;
  final herPet = Pet.bird;

  if (myPet == Pet.dog) {
    print('Мой питомец - собака');
  }

  _printPetName(myPet);
  _printPetName(herPet);
}

void _printPetName(Pet myPet) {
  switch (myPet) {
    case Pet.dog:
      print('Собака');
      break;
    case Pet.cat:
      print('Кошка');
      break;
    case Pet.bird:
      print('Птица');
      break;
  }
}
