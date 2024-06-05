class Escenario extends GameObject implements IDisplayable{
  
  private color color1;
  private float anchoCelda;
  private float altoCelda;
  
  /**EL ESCENARIO ESTARA DIVIDIDO EN CELDAS 15x15 PARA PODER UBICAR LA CABEZA EN EL CENTRO DEL ESCENARIO**/
  public Escenario(){
    this.posicion=new PVector(width/2,height/2);
    this.ancho=width/12*10;
    this.alto= height/14*10;
    this.color1=color(#0B1F64);
    this.anchoCelda=this.ancho/15;
    this.altoCelda=this.alto/15;
  }
  
  public void display(){
    fill(color1);
    rectMode(CENTER);
    rect(this.posicion.x,this.posicion.y,this.ancho,this.alto);
  }
}
