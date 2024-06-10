class ParteCuerpo extends GameObject implements IDisplayable, IMoveable{
  private Collider collider;
  private PVector velocidad;

  public ParteCuerpo(PVector posicion,float ancho,float alto) {
    this.ancho=ancho;
    this.alto=alto;
    this.posicion = posicion;
    this.collider= new Collider(this.posicion,this.ancho,this.alto);
  }

  @Override
  public void display() {
  }
  public void move(){
  }
  
  public void setPos(PVector posicion) {
    this.posicion = posicion;
    this.collider.setPos(posicion);
  }
}
