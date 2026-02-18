enum Pet {
  dog('Собака'),
  cat('Кошка'),
  bird('Птица');

  const Pet(this.localization);
  final String localization;

  void printPetName() {
    print(this.localization);
  }
}

void main() {
  final myPet = Pet.dog;
  final herPet = Pet.bird;

  myPet.printPetName();
  herPet.printPetName();
}
