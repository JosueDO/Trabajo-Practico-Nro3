class Animal extends GameObject{
  
  protected PImage imagen;
  protected Escenario escenario;
  protected int valor;
  
  public void display(){
    imageMode(CENTER);
    image(this.imagen,this.posicion.x,this.posicion.y,this.ancho,this.alto);
  }
}
