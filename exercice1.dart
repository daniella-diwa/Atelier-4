class couleur {
final int r, g, b;
couleur(this.r, this.g, this.b);
couleur.rouge() : r=255, g=0, b=0;
couleur.vert() : r=0, g=255, b=0;
couleur.bleu() : r=0, g=0, b=255;

void affichercouleur()=>print("(R: $r, V:$g, B:$b)");
}

void main(){

  couleur v=couleur.vert();
  couleur r=couleur.rouge();
  couleur b=couleur.bleu();

  v.affichercouleur();
  r.affichercouleur();
  b.affichercouleur();
}