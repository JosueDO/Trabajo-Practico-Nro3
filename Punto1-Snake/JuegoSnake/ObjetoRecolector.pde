class ObjetoRecolector extends GameObject {
  private Colision colision;

  public ObjetoRecolector(PVector posicion) {
    this.posicion = posicion;
    this.colision = new Colision(Constantes.ancho, Constantes.largo, posicion);
  }

  @Override
  void dibujar() {
    fill(111, 22, 11);
    rect(this.posicion.x, this.posicion.y, Constantes.ancho, Constantes.largo);
  }

  @Override
  void mover(float dx, float dy) {
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

  public boolean colisionaCon(Colision otroCollider) {
    return this.colision.validarColision(otroCollider);
  }
}
