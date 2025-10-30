abstract class Connectable {
  void connecter(String utilisateur);
  void deconnecter();
}

class ServeurAPI implements Connectable {
  @override
  void connecter(String utilisateur) {
    print("ServeurAPI : Connexion établie pour $utilisateur.");
  }

  @override
  void deconnecter() {
    print("ServeurAPI : Déconnexion réussie.");
  }
}

class BaseDeDonnees implements Connectable {
  @override
  void connecter(String utilisateur) {
    print("BaseDeDonnees : Connexion etablie pour $utilisateur.");
  }

  @override
  void deconnecter() {
    print("BaseDeDonnees : Déconnexion réussie.");
  }
}

void main() {
  var api = ServeurAPI();
  var bdd = BaseDeDonnees();

  List<Connectable> services = [api, bdd];

  for (var service in services) {
    service.connecter("admin");
    service.deconnecter();
    print("");
  }
}
