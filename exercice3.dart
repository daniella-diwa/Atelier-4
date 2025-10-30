class Compte {
  double _solde;

  final String numeroCompte;

  Compte(this.numeroCompte, [this._solde = 0.0]);

  String get solde {
    return "${_solde.toStringAsFixed(2)} \$";
  }

  void depot(double montant) {
    if (montant > 0) {
      _solde += montant;
      print("Dépôt de ${montant.toStringAsFixed(2)} \$ effectué.");
    } else {
      print("Erreur: Le montant du dépôt doit être positif.");
    }
  }

  double get soldeBrut => _solde;
}

void main() {
  var monCompte = Compte("123456");

  print("Numéro de compte: ${monCompte.numeroCompte}");
  print("Solde initial : ${monCompte.solde}");

  double montantDuDepot = 150.75;
  print(" dépôt de ${montantDuDepot.toStringAsFixed(2)} \$:");
  monCompte.depot(montantDuDepot);

  print("Solde actuel: ${monCompte.solde}");
}
