/*demo for inheritance with class and mixins*/

class Footballer {
  String name, club, country, gender;
  int age;

  Footballer(this.name, this.club, this.country, this.age, this.gender);
}

mixin AttackingSkill {
//let's assign rating values from 1 to 10
  double paceRating = 0;
  double dribblingRate = 0;
  double shootAccuracy = 0;

  String showAttackingSkill() {
    if (paceRating > 8) {
      return 'good at pace';
    } else if (shootAccuracy > 8) {
      return ' good at accurate  shooting';
    } else if (dribblingRate > 8) {
      return ' excellent at dribbling';
    } else {
      return 'not  good as an attacking player';
    }
  }
}
mixin DefendingSkill {
//assginging rating values from 1 to 10
  double tackelPerGame = 0;
  double clearancePerGame = 0;
  double accuratePasses = 0;
  double crosses = 0;

  String showDefendingSkill() {
    if (crosses > 8) {
      return ' good at making cross passes';
    } else if (tackelPerGame > 7) {
      return 'very good at tacking';
    } else if (clearancePerGame > 8) {
      return ' good at making clearances';
    } else if (accuratePasses > 20) {
      return 'good at making excellent passes';
    } else {
      return 'Not good as a defender';
    }
  }
}

class Player extends Footballer with AttackingSkill, DefendingSkill {
  Player(String name, String club, String country, int age, String gender)
      : super(name, club, country, age, gender);
}

void main() {
  var newPlayer = Player('coutinho', 'bayern', 'brazil', 30, 'male');
  newPlayer.shootAccuracy = 10;
  try {
    print(
        'The player is ${newPlayer.name},He is ${newPlayer.showAttackingSkill()}. ');
  } catch (e) {
    print('double variable are null, send one');
  }
  var anotherPlayer = Player('pique', 'bayern', 'brazil', 30, 'male');
  anotherPlayer.tackelPerGame = 25;
  print(
      'The player is ${anotherPlayer.name},He is ${anotherPlayer.showDefendingSkill()}.');
}
