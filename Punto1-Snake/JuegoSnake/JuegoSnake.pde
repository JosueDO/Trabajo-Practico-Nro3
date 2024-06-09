
Snake serpiente;
ParteCuerpo objeto;
private Escenario escenario;
float velocidad = 4.0;

void setup() {
  frameRate(60);
  size(600, 600);
  serpiente = new Snake(new PVector(100, 100));
  objeto = new ParteCuerpo(new PVector(200, 200));
  escenario= new Escenario();
}

void draw() {
  background(0); 
  escenario.display();
  serpiente.display();
  objeto.display();
  
  // Mover la serpiente según las teclas presionadas
  if (keyPressed) {
    if (key == 'w' || key == 'W') {
      serpiente.move(0, -velocidad);
    } else if (key == 's' || key == 'S') {
      serpiente.move(0, velocidad);
    } else if (key == 'a' || key == 'A') {
      serpiente.move(-velocidad, 0);
    } else if (key == 'd' || key == 'D') {
      serpiente.move(velocidad, 0);
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
