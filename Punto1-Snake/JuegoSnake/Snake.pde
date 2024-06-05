class Snake extends GameObject implements IDisplayable, IMoveable{
  private Collider colision;
  private color tinte;

  public Snake(PVector posicion) {
    this.posicion = posicion;
    this.colision = new Collider(Constantes.ancho, Constantes.largo, posicion);
    this.tinte = color(666, 111, 0); 
  }

  @Override
  void display() {
    fill(this.tinte);
    rect(this.posicion.x, this.posicion.y, Constantes.ancho,Constantes.largo);
  }

  @Override
  void move(float dx, float dy) {
    this.posicion.add(dx, dy);
    this.colision.setPos(this.posicion); 
  }

  public void setPosicion(PVector posicion) {
    this.posicion = posicion;
    this.colision.setPos(posicion);
  }

  public PVector getPosicion() {
    return this.posicion;
  }

  public boolean colisionaCon(Collider otroCollider) {
    return this.colision.validarColision(otroCollider);
  }
}
