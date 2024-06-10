class Collider extends GameObject{

  public Collider(PVector posicion,float ancho, float alto) {
    this.ancho = ancho;
    this.alto = alto;
    this.posicion = posicion;
  }

/**COMPARA LA COLISION DE DOS RECTAGULOS TENIENDO EN CUENTA SU POSICION CENTRAL**/
  public boolean validarColision(Collider otroCollider) {
    boolean isCollide = false;

    if (this.posicion.x - (this.ancho/2) < otroCollider.getPos().x + (otroCollider.getAncho()/2) &&
        this.posicion.x + (this.ancho/2) > otroCollider.getPos().x - (otroCollider.getAncho()/2) &&
        this.posicion.y - (this.alto/2) < otroCollider.getPos().y + (otroCollider.getAlto()/2) &&
        this.posicion.y + (this.alto/2) > otroCollider.getPos().y - (otroCollider.getAlto()/2)) {
      isCollide = true;
    }

    return isCollide;
  }
}
