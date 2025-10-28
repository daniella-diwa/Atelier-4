class point {
  double _x;
  double _y;
  point(this._x, this._y);
  void move(double dx, double dy) {
    _x += dx;
    _y += dy;
  }
  void display() {
    print('point aux coordonnées: ($_x, $_y)');
  }
}


void main(){
  var pt =point(2,5);
  pt.display();
  pt.move(-1, 3);
  pt.display();
}