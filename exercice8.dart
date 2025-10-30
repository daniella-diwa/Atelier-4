class Livre {
  String titre;
  String auteur;
  int _pages = 200;

  static int totalLivres = 0;
  Livre(this.titre, this.auteur) {
    totalLivres++;
  }
  int get pages => _pages;

  void afficherInfos() {
    print("Titre: $titre, Auteur: $auteur, Pages: $pages");
  }

  static void afficherTotalLivres() {
    print("Nombre total de livres créés : $totalLivres");
  }
}

class Roman extends Livre {
  String genre;

  Roman(String titre, String auteur, this.genre) : super(titre, auteur);

  @override
  void afficherInfos() {
    // Affiche les infos de Livre puis le genre
    super.afficherInfos();
    print("Genre: $genre");
  }

  void afficherGenre() {
    print("Genre: $genre");
  }
}

void main() {
  // Création d'objets Livre
  var livre1 = Livre('Le Petit Prince', 'Antoine de Saint-Exupéry');
  var livre2 = Livre('Les Misérables', 'Victor Hugo');

  livre1.afficherInfos();
  livre2.afficherInfos();

  // Création d'objets Roman
  var roman1 = Roman('Le Mystère', 'Auteur Inconnu', 'Policier');
  var roman2 = Roman('Nuit d\'été', 'Marie Dupont', 'Romance');

  roman1.afficherInfos();
  roman2.afficherInfos();

  // Afficher le nombre total de livres créés
  Livre.afficherTotalLivres();
}
