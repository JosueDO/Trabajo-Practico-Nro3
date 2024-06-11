class ParteCuerpo extends GameObject implements IDisplayable, IMoveable{
  private Collider collider;
  private PVector velocidad;
  private PVector posicion2;
  private color cuadro;

  public ParteCuerpo(PVector posicion,float ancho,float alto,int colorSnake) {
    this.cuadro= color(0,colorSnake,0);
    this.ancho=ancho;
    this.alto=alto;
    this.posicion = posicion;
    this.collider= new Collider(this.posicion,this.ancho,this.alto);
    this.velocidad=new PVector(0,0);
  }

  @Override
  public void display() {
    fill(cuadro);
    rectMode(CENTER);
    rect(this.posicion.x,this.posicion.y,this.ancho,this.alto);
  }
  public void move(){
    this.posicion.add(this.velocidad);
  }
  
  public void setPos(PVector posicion) {
    this.posicion = posicion;
    this.collider.setPos(posicion);
  }
  public void setVelocidad(PVector velocidad){
    this.velocidad=velocidad;
  }
}
