void main() {
  final game = Game();
  game.playerMove();
  game.playerBuild();
  game.playerDestroy();
  game.playerCraft();
  print(game.level);
}

class Game {
  int level = 0;

  void playerMove() {
    print('Персонаж двигается');
    level += 1;
  }

  void playerBuild() {
    print('Персонаж строит что-то');
  }
}

extension destroyExtation on Game {
  void playerDestroy() {
    print('Персонаж ломает что-то');
    level += 1;
  }
}

extension craftExtation on Game {
  void playerCraft() {
    print('Персонаж собирает что-то');
  }
}
