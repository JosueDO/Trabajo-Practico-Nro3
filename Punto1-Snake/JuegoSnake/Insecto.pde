class Insecto extends Animal{
  public Insecto(Escenario escenario){
    this.escenario=escenario;
    this.imagen=loadImage("insecto.png");
    int x = (int)random(1,16);
    int y = (int)random(1,16);
    this.posicion= new PVector(escenario.getPos().x+(x-1)*escenario.getAnchoCelda()+escenario.getAnchoCelda()/2,
                              escenario.getPos().y+(y-1)*escenario.getAltoCelda()+escenario.getAltoCelda()/2);
    this.ancho=escenario.getAnchoCelda();
    this.alto= escenario.getAltoCelda();
    this.collider= new Collider(new PVector(this.posicion.x,this.posicion.y),this.ancho,this.alto);
    this.valor=10;
  }
   public void display(){
    imageMode(CENTER);
    image(this.imagen,this.posicion.x,this.posicion.y,this.ancho,this.alto);
  }
}
