private Snake serpiente;
private Escenario escenario;

public void setup() {
  frameRate(60);
  size(600, 600);
  escenario= new Escenario();
  serpiente = new Snake(escenario);
}

public void draw() {
  background(0); 
  escenario.display();
  serpiente.display();
}
