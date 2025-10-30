class Media {
  final String titre;

  Media(this.titre);

  void afficherType() {
    print("Ceci est un média générique.");
  }
}

class Livre extends Media {
  final String auteur;

  Livre(String titre, this.auteur) : super(titre);

  @override
  void afficherType() {
    print("Ceci est un Livre : $titre par $auteur.");
  }
}

class Film extends Media {
  final int dureeMinutes;

  Film(String titre, this.dureeMinutes) : super(titre);

  @override
  void afficherType() {
    print("Ceci est un Film : $titre (${dureeMinutes} min).");
  }
}

void main() {
  List<Media> catalogue = [];

  catalogue.add(Livre("Les poussins tetus", "fables de la montagne"));
  catalogue.add(Livre("aladin", "disneyland"));
  catalogue.add(Film("cendrillon", 208));
  catalogue.add(Film("Titanic", 135));

  for (var media in catalogue) {
    media.afficherType();
  }
}
