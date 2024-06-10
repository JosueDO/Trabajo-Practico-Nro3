class Snake implements IDisplayable, IMoveable{
  private ParteCuerpo[] cuerpo;
  private Escenario escenario;


  public Snake(Escenario escenario) {
    this.escenario=escenario;
    cuerpo= new ParteCuerpo[100];
    cuerpo[0]= new ParteCuerpo(escenario.posicion,escenario.anchoCelda,escenario.altoCelda);
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
  }
}
