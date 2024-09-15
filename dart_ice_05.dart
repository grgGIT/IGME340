/// Our list of monsters
List<dynamic> monsters = [];

/// Our Base Monster class
class Monster {
  String name = "";
  int hp = 0;
  int speed = 0;
  int score = 0;

  /// constructor
  Monster(String name, int hp, int speed, int score) {
    this.name = name;
    this.hp = hp;
    this.speed = speed;
    this.score = score;
  }

  /// class method
  void status() {
    print("name: $name, hp: $hp, speed: $speed, score: $score");
  }
}

// Create a Player class
class Player {
  String name = "";
  int lives = 0;
  int xp = 0;
  int score = 0;
  int speed = 0;

  /// constructor
  Player(this.name, this.xp, this.speed, this.score, this.lives);

  /// class method
  void status() {
    print("Player -> name: $name, lives: $lives, score: $score, xp: $xp, speed: $speed");
  }

  /// Method to add treasure (cascading)
  Player addTreasure(List<Treasure> treasures, Treasure newTreasure) {
    treasures.add(newTreasure);
    return this;
  }
}

// Create a Treasure class
class Treasure {
  String name = "";
  int value = 0;
  int rarity = 0;
  int type = 0;

  /// constructor
  Treasure(this.name, this.value, this.rarity, this.type);

  /// class method
  void status() {
    print("Treasure -> name: $name, value: $value, rarity: $rarity, type: $type");
  }

  /// Method for chaining
  Treasure setName(String name) {
    this.name = name;
    return this;
  }

  Treasure setValue(int value) {
    this.value = value;
    return this;
  }

  Treasure setRarity(int rarity) {
    this.rarity = rarity;
    return this;
  }

  Treasure setType(int type) {
    this.type = type;
    return this;
  }
}

void main() {
  // Monster instance
  Monster myGoomba = Monster('Goomba', 50, 20, 200);
  myGoomba.status();

  // Player instance
  Player mario = Player('Mario', 10, 40, 500, 3);
  mario.status();

  // Create a list of Treasure objects
  List<Treasure> treasures = [
    Treasure("Gold Coin", 100, 3, 1),
    Treasure("Silver Necklace", 200, 2, 2),
    Treasure("Diamond Ring", 500, 5, 1),
    Treasure("Ancient Artifact", 1000, 4, 3),
    Treasure("Emerald Gem", 300, 4, 1),
  ];

  // Loop through the list and report each item's status
  for (Treasure treasure in treasures) {
    treasure.status();
  }

  // Add a new Treasure item using cascading and chaining
  Treasure newTreasure = Treasure("", 0, 0, 0)
    ..setName("Ruby Crown")
    ..setValue(1500)
    ..setRarity(5)
    ..setType(2)
    ..status(); // Print the status of the new treasure

  // Add the new treasure to the list using method chaining and print the updated list
  mario.addTreasure(treasures, newTreasure).status();

  print("Updated Treasures List:");
  for (Treasure treasure in treasures) {
    treasure.status();
  }
}

