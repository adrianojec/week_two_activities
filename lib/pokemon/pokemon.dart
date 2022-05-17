class Pokemon {
  final String name;
  final String typeOne;
  final String typeTwo;
  final double height;
  final double weight;
  final String sound;
  late Map<String, dynamic> ability;
  late int hp;

  Pokemon({
    required this.name,
    required this.typeOne,
    required this.typeTwo,
    required this.height,
    required this.weight,
    required this.sound,
    required this.hp,
  });

  String cry() => '$sound!';

  void attack(Pokemon pokemon) => print('${ability['skill']}!');
}

class FirePokemon extends Pokemon {
  FirePokemon({
    required String name,
    required String typeOne,
    required String typeTwo,
    required double height,
    required double weight,
    required String sound,
    required int hp,
  }) : super(
            name: name,
            typeOne: typeOne,
            typeTwo: typeTwo,
            height: height,
            weight: weight,
            sound: sound,
            hp: hp);

  @override
  void attack(Pokemon pokemon) {
    if (hp > 0) {
      print('ATTACK! ${ability['skill']}!');
      num totalHp = pokemon.hp;
      switch (pokemon.typeOne) {
        case 'Electric':
          totalHp -= (ability['damage'] + 10);
          totalHp <= 0 ? totalHp = 0 : null;
          print(
              'It\'s super effective!\n$name total HP: $hp\n${pokemon.name} total HP: $totalHp\n');
          break;
        default:
          totalHp -= ability['damage'];
          totalHp <= 0 ? totalHp = 0 : null;
          print('$name total HP: $hp\n${pokemon.name} total HP: $totalHp\n');
      }
      pokemon.hp = totalHp as int;
    } else {
      print('$name} has been defeated!');
    }
  }

  @override
  String toString() {
    return '$name ($hp)';
  }
}

class WaterPokemon extends Pokemon {
  WaterPokemon({
    required String name,
    required String typeOne,
    required String typeTwo,
    required double height,
    required double weight,
    required String sound,
    required int hp,
  }) : super(
            name: name,
            typeOne: typeOne,
            typeTwo: typeTwo,
            height: height,
            weight: weight,
            sound: sound,
            hp: hp);

  @override
  void attack(Pokemon pokemon) {
    if (hp > 0) {
      print('ATTACK! ${ability['skill']}!');
      num totalHp = pokemon.hp;
      switch (pokemon.typeOne) {
        case 'Fire':
        case 'Rock':
          totalHp -= (ability['damage'] + 10);
          totalHp <= 0 ? totalHp = 0 : null;
          print(
              'It\'s super effective!\n$name total HP: $hp\n${pokemon.name} total HP: $totalHp\n');
          break;
        default:
          totalHp -= ability['damage'];
          totalHp <= 0 ? totalHp = 0 : null;
          print('$name total HP: $hp\n${pokemon.name} total HP: $totalHp\n');
      }
      pokemon.hp = totalHp as int;
    } else {
      print('$name} has been defeated!');
    }
  }

  @override
  String toString() {
    return '$name ($hp)';
  }
}

class ElectricPokemon extends Pokemon {
  ElectricPokemon({
    required String name,
    required String typeOne,
    required String typeTwo,
    required double height,
    required double weight,
    required String sound,
    required int hp,
  }) : super(
            name: name,
            typeOne: typeOne,
            typeTwo: typeTwo,
            height: height,
            weight: weight,
            sound: sound,
            hp: hp);

  @override
  void attack(Pokemon pokemon) {
    if (hp == 0) {
      print('$name has been defeated!');
    } else {
      print('ATTACK! ${ability['skill']}!');
      num totalHp = pokemon.hp;
      switch (pokemon.typeOne) {
        case 'Water':
        case 'Rock':
          totalHp -= (ability['damage'] + 10);
          totalHp <= 0 ? totalHp = 0 : null;
          print(
              'It\'s super effective!\n$name total HP: $hp\n${pokemon.name} total HP: $totalHp\n');
          break;
        default:
          totalHp -= ability['damage'];
          totalHp <= 0 ? totalHp = 0 : null;
          print('$name total HP: $hp\n${pokemon.name} total HP: $totalHp\n');
      }
      pokemon.hp = totalHp as int;
    }
  }

  @override
  String toString() {
    return '$name ($hp)';
  }
}

class RockPokemon extends Pokemon {
  RockPokemon({
    required String name,
    required String typeOne,
    required String typeTwo,
    required double height,
    required double weight,
    required String sound,
    required int hp,
  }) : super(
            name: name,
            typeOne: typeOne,
            typeTwo: typeTwo,
            height: height,
            weight: weight,
            sound: sound,
            hp: hp);

  @override
  void attack(Pokemon pokemon) {
    if (hp > 0) {
      print('ATTACK! ${ability['skill']}!');
      num totalHp = pokemon.hp;
      switch (pokemon.typeOne) {
        case 'Fire':
        case 'Electric':
        case 'Ground':
          totalHp -= (ability['damage'] + 10);
          totalHp <= 0 ? totalHp = 0 : null;
          print(
              'It\'s super effective!\n$name total HP: $hp\n${pokemon.name} total HP: $totalHp\n');
          break;
        default:
          totalHp -= ability['damage'];
          totalHp <= 0 ? totalHp = 0 : null;
          print('$name total HP: $hp\n${pokemon.name} total HP: $totalHp\n');
      }
      pokemon.hp = totalHp as int;
    } else {
      print('$name has been defeated!');
    }
  }

  @override
  String toString() {
    return '$name ($hp)';
  }
}
