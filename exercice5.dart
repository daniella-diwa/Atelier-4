abstract class Forme {
  double calculerAire();

  void afficherMessage() {
    print("Calcul de l'aire...");
  }
}

class Cercle extends Forme {
  final double rayon;

  Cercle(this.rayon);

  @override
  double calculerAire() {
    return 3.14 * rayon * rayon;
  }
}

class Rectangle extends Forme {
  final double longueur;
  final double largeur;

  Rectangle(this.longueur, this.largeur);

  @override
  double calculerAire() {
    return longueur * largeur;
  }
}

void main() {
  var cercle1 = Cercle(5);
  var rect1 = Rectangle(4, 3);

  cercle1.afficherMessage();
  print("L'aire du cercle est : ${cercle1.calculerAire()}");

  rect1.afficherMessage();
  print("L'aire du rectangle est : ${rect1.calculerAire()}");
}
