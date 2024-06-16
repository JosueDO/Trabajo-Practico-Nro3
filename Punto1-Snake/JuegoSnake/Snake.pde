class Snake implements IDisplayable, IMoveable{
  private ParteCuerpo[] cuerpo;
  private Escenario escenario;
  private int colorSnake;
  private int puntaje;


  public Snake(Escenario escenario) {
    this.puntaje=0;
    colorSnake=255;
    this.escenario=escenario;
    cuerpo= new ParteCuerpo[100];
    cuerpo[0]= new ParteCuerpo(new PVector(escenario.posicion.x+escenario.ancho/2,escenario.posicion.y+escenario.alto/2),this.escenario.anchoCelda,this.escenario.altoCelda,colorSnake);
  }

  @Override
  public void display() {
    for(ParteCuerpo c:cuerpo){
      if(c!=null){
         c.display();
      }
    }
  }

  @Override
  public void move() {
    for(ParteCuerpo c:cuerpo){
      if(c!=null){
         c.move();
      }
    }
  }
  
  public int getPuntaje(){
    return this.puntaje;
  }
}
