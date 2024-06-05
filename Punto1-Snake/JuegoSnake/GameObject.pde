abstract class GameObject {
  protected PVector posicion;
  protected float ancho;
  protected float alto;
  


  public float getAncho() {
    return this.ancho;
  }
  public void setAncho(float ancho) {
    this.ancho=ancho;
  }

  public float getAlto() {
    return this.alto;
  }
  public void setAlto(float alto){
    this.alto=alto;
  }
  
  public PVector getPos() {
    return this.posicion;
  }

  public void setPos(PVector posicion) {
    this.posicion = posicion;
  }
}
