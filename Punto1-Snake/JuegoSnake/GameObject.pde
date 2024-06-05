abstract class GameObject {
  protected PVector posicion;
  abstract void dibujar();
  abstract void mover(float dx, float dy);
}
