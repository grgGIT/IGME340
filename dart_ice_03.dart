Map player01 = {
  'name': 'Leeroy Jenkins',
  'sex': 'M',
  'class': 'Knight',
  'hp': 1000
};

Map player02 = {
  'name': 'Jarod Lee Nandin',
  'sex': 'M',
  'class': 'Overlord',
  'hp': 9000
};

Map<String, dynamic> player03 = {
  'name': 'Samantha Evelyn Cook',
  'sex': 'F',
  'class': 'Gunter',
  'hp': 5000
};

void main() {
  print(player01);
  print("player01:${player01.runtimeType}");
  print(player02);
  print("player02:${player02.runtimeType}");
  print(player03);
  print("player03:${player03.runtimeType}");

  var player04 = Map();
  player04['name'] = 'Gordon Freeman';
  player04['sex'] = 'M';
  player04['class'] = 'Scientist';
  player04['hp'] = 6000;

  print("player04: $player04");
  print("player04: ${player04.runtimeType}");

  //Create a new map called player05, give it the same keys as the other players. Use whichever creation method you want, and populate it with data. Print the map.

  //Add a new key to player05 called armor, give it a value, and then remove hp. Print the results
  var player05 = Map();
  player05['name'] = 'Doug Flutie';
  player05['sex'] = 'M';
  player05['class'] = 'Quarterback';
//player05['hp']= 6000;
  player05['armor'] = 8000;
  print("player05: $player05");
  print("player05: ${player05.runtimeType}");

  //Create a new map called moreStuff with the following keys, mp, money, xp, and level. Add whatever values you want for these. Add moreStuff to all the player maps.
  Map<String, dynamic> moreStuff = {
    'mp': 80,
    'money': '1000 gp',
    'xp': 3000,
    'level': 3
  };
  player01.addAll(moreStuff);
  player02.addAll(moreStuff);
  player03.addAll(moreStuff);
  player04.addAll(moreStuff);
  player05.addAll(moreStuff);

  //Print all the keys from player05.
  print(player05.keys);

  //Print all the values from player05.
  print(player05.values);

  //Create a new List of Maps, called playerList, and add our player maps to this list, then print it.

  var playerList = [player01, player02, player03, player04, player05];
  print(playerList);

  //Get the second player from the playerList and output the name.
  var player2Name = playerList[1].values.first;
  print(player2Name);
  
  //Loop through our playerList and output all the player names and classes.
 for (var player in playerList) {
    print("Player Name: ${player['name']}, Class: ${player['class']}");
  }
  
//Clear player01, and output the result.
 player01.clear();
 print(playerList);

}