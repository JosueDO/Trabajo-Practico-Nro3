class Snake implements IDisplayable, IMoveable{
  private ParteCuerpo[] cuerpo;
  private Escenario escenario;
  private int colorSnake;
  private int puntaje;
  private PVector velocidad;
  private int indice;

  public Snake(Escenario escenario) {
    this.puntaje=0;
    colorSnake=255;
    this.escenario=escenario;
    this.velocidad= new PVector(0,0);
    cuerpo= new ParteCuerpo[100];
    indice=1;
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
    cuerpo[0].posicion2=cuerpo[0].posicion;
    cuerpo[0].setPos(new PVector(cuerpo[0].getPos().x+velocidad.x*escenario.getAnchoCelda(),cuerpo[0].getPos().y+velocidad.y*escenario.getAltoCelda()));
    for(int i=1;i<indice;i++){
      if(cuerpo[i]!=null){
        cuerpo[i].posicion=cuerpo[i-1].posicion2;
        cuerpo[i].posicion2=cuerpo[i].posicion;
      }
    }
  }

  public void agregarCuerpo(){
  }
  public int getPuntaje(){
    return this.puntaje;
  }
  public void setVelocidad(PVector velocidad){
    this.velocidad=velocidad;
  }
}
