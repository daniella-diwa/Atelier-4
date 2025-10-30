class Tache {
  String description;

  static int nombreTotal = 0;

  Tache(this.description) {
    nombreTotal++; //
  }
}

void main() {
  var a = Tache("mange_tes_légumes");
  var b = Tache("fais tes devoirs");
  var c = Tache("va te coucher");

  print(a.description);
  print(b.description);
  print(c.description);

  print("Nombre de tâches créées : ${Tache.nombreTotal}");
}
