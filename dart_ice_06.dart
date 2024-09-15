/// Our list of monsters
List<Monster> monsters = [];

///
/// Our Base Monster class
///
class Monster {
  String name;
  int hp;
  int speed;
  int score;
  String type; // New property for type

  /// constructor
  Monster({this.name = "", this.hp = 0, this.speed = 0, this.score = 0, this.type = ""});

  /// class method
  void status() {
    print("name: $name, hp: $hp, speed: $speed, score: $score, type: $type");
  }
  
}

class Goomba extends Monster {
  String color;
  int dmg;

  Goomba({super.name, super.hp, super.speed, super.score, this.color = "brown", this.dmg = 20}) {
    type = "Goomba"; // Set the type for Goomba
  }

  @override
  void status() {
    print("name: $name, hp: $hp, speed: $speed, score: $score, color: $color, dmg: $dmg, type: $type");
  }
}

class Boo extends Monster {
  int mp;

  Boo({super.name, super.hp, super.speed, super.score, this.mp = 100}) {
    type = "Boo"; // Set the type for Boo
  }

  void castSpell(int amount) {
    if (mp >= amount) {
      mp -= amount;
      print("$name casts a spell and loses $amount MP. Remaining MP: $mp");
    } else {
      print("$name does not have enough MP to cast the spell.");
    }
  }

  @override
  void status() {
    print("name: $name, hp: $hp, speed: $speed, score: $score, mp: $mp, type: $type");
  }
}

/// Function to add Goombas and Boos to the monster list
void makeSomeMonsters() {
  monsters.add(Goomba(name: "Pinky", hp: 50, speed: 5, score: 100));
  monsters.add(Goomba(name: "Bob", hp: 60, speed: 6, score: 150));
  monsters.add(Boo(name: "Casper", hp: 40, speed: 10, score: 200, mp: 120));
  monsters.add(Boo(name: "Spooky", hp: 45, speed: 8, score: 180, mp: 80));
}

void showMonsters(String type) {
  for (Monster monster in monsters) {
    if (monster.type == type) {
      monster.status();
    }
  }
}

void main() {
  makeSomeMonsters();

  // Show all Boos
  print("Showing all Boos:");
  showMonsters("Boo");

  // Show all Goombas
  print("\nShowing all Goombas:");
  showMonsters("Goomba");
}

