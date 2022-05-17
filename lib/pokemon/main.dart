import 'package:week_two_activities/pokemon/pokemon.dart';

void main() {
  final charmander = FirePokemon(
    name: 'Charmander',
    typeOne: 'Fire',
    typeTwo: 'None',
    height: 2.00,
    weight: 18.7,
    sound: 'char charmander!',
    hp: 100,
  );
  charmander.ability = {'skill': 'Flare', 'damage': 20};

  final squirtle = WaterPokemon(
    name: 'Squirtle',
    typeOne: 'Water',
    typeTwo: 'None',
    height: 1.08,
    weight: 19.8,
    sound: 'squirtle',
    hp: 100,
  );
  squirtle.ability = {'skill': 'Water Gun', 'damage': 30};

  final magneton = ElectricPokemon(
    name: 'Magneton',
    typeOne: 'Electric',
    typeTwo: 'Steel',
    height: 3.03,
    weight: 132.3,
    sound: 'magneton',
    hp: 100,
  );
  magneton.ability = {'skill': 'Magnetic Blast', 'damage': 50};

  final onix = RockPokemon(
    name: 'Onix',
    typeOne: 'Rock',
    typeTwo: 'Ground',
    height: 28.10,
    weight: 463.0,
    sound: 'wuraaaahhh wuroooooh',
    hp: 100,
  );
  onix.ability = {'skill': 'Rock Throw', 'damage': 90};

  while (onix.hp > 0 && squirtle.hp > 0) {
    squirtle.attack(onix);
    onix.attack(squirtle);
    onix.hp == 0 || squirtle.hp == 0 ? print('Defeated!') : null;
  }
}
