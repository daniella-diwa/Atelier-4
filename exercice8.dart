class Livre {
  String titre;
  String auteur;
  int _pages = 200;

  static int totalLivres = 0;
  Livre(this.titre, this.auteur) {
    totalLivres++;
  }
}
