private Snake serpiente;
private Escenario escenario;
private HUD hud;

public void setup() {
  frameRate(60);
  size(600, 600);
  hud= new HUD();
  escenario= new Escenario();
  serpiente = new Snake(escenario);
}

public void draw() {
  background(0); 
  escenario.display();
  hud.mostrarPuntaje(serpiente);
  serpiente.display();
  serpiente.move();
}

public void keyReleased(){
  if(key=='a'||key=='A'||keyCode==LEFT){
    serpiente.cuerpo[0].setVelocidad(new PVector(-escenario.getAnchoCelda(),0));
  }
  if(key=='s'||key=='S'||keyCode==DOWN){
    serpiente.cuerpo[0].setVelocidad(new PVector(0,escenario.getAltoCelda()));
  }
  if(key=='W'||key=='w'||keyCode==UP){
    serpiente.cuerpo[0].setVelocidad(new PVector(0,-escenario.getAltoCelda()));
  }
  if(key=='D'||key=='d'||keyCode==RIGHT){
    serpiente.cuerpo[0].setVelocidad(new PVector(escenario.getAnchoCelda(),0));
  }
}
