class ParteCuerpo extends GameObject implements IDisplayable, IMoveable{
  private Collider colision;

  public ParteCuerpo(PVector posicion) {
    this.posicion = posicion;
    this.colision = new Collider(Constantes.ancho, Constantes.largo, posicion);
  }

  @Override
  void display() {
    fill(111, 22, 11);
    rect(this.posicion.x, this.posicion.y, Constantes.ancho, Constantes.largo);
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
