


Snake serpiente;
ObjetoRecolector objeto;
float velocidad = 4.0;

void setup() {
  size(600, 700);
  serpiente = new Snake(new PVector(100, 100));
  objeto = new ObjetoRecolector(new PVector(200, 200));
}

void draw() {
  background(0);  
  serpiente.dibujar();
  objeto.dibujar();
  
  // Mover la serpiente según las teclas presionadas
  if (keyPressed) {
    if (key == 'w' || key == 'W') {
      serpiente.mover(0, -velocidad);
    } else if (key == 's' || key == 'S') {
      serpiente.mover(0, velocidad);
    } else if (key == 'a' || key == 'A') {
      serpiente.mover(-velocidad, 0);
    } else if (key == 'd' || key == 'D') {
      serpiente.mover(velocidad, 0);
    }
  }
  
  fill(200);
  textSize(24);
  text("x: " + serpiente.getPosicion().x, 450, 130);
  text("y: " + serpiente.getPosicion().y, 450, 150);
  
  // Se produce la colision
  if (serpiente.colisionaCon(objeto.colision)) {
    fill(255, 0, 0);
    text("Colision ok", 300, 200);
  }
}
