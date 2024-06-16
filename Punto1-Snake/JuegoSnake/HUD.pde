class HUD{
  private PFont fuente;
  public HUD(){
    fuente=loadFont("AgencyFB-Bold-48.vlw");
  }
  public void mostrarPuntaje(Snake snake){
    textFont(fuente);
    fill(255);
    textSize(25);
    text("PUNTAJE: "+snake.getPuntaje(),20,height/16);
  }
}
