private Snake serpiente;
private Escenario escenario;
private HUD hud;
private float cronometro;
private int tiempoActual,tiempoInicial;
private Animal animal;
private ArrayList<Animal> animales;

public void setup() {
  frameRate(60);
  size(600, 600);
  hud= new HUD();
  escenario= new Escenario();
  serpiente = new Snake(escenario);
  tiempoInicial=millis();
  generarAnimal();
  
}

public void draw() {

  background(0); 
  cronometro+=Time.getDeltaTime(frameRate);
  escenario.display();
  animal.display();
  hud.mostrarPuntaje(serpiente);
  hud.mostrarTiempo(cronometro);
  serpiente.display();
  tiempoActual=millis();
  if (tiempoActual - tiempoInicial >= 400) {  // Actualizar cada 400 ms
    serpiente.move();
    tiempoInicial = tiempoActual;
  }
  
}

public void keyReleased(){
  if(key=='a'||key=='A'||keyCode==LEFT){
    serpiente.setVelocidad(new PVector(-1,0));
  }
  if(key=='s'||key=='S'||keyCode==DOWN){
    serpiente.setVelocidad(new PVector(0,1));
  }
  if(key=='W'||key=='w'||keyCode==UP){
    serpiente.setVelocidad(new PVector(0,-1));
  }
  if(key=='D'||key=='d'||keyCode==RIGHT){
    serpiente.setVelocidad(new PVector(1,0));
  }
}
void generarAnimal() {
  int x = (int)random(1,4);
  
  if (x== 1) {
    animal= new Insecto(escenario);
  } else if (x==2) {
    animal= new Pajaro(escenario);
  } else {
    animal= new Raton(escenario);
  }
}
