class Escenario extends GameObject implements IDisplayable{
  
  private color color1;
  private color color2;
  private float anchoCelda;
  private float altoCelda;
  
  /**EL ESCENARIO ESTARA DIVIDIDO EN CELDAS 15x15 PARA PODER UBICAR LA CABEZA EN EL CENTRO DEL ESCENARIO**/
  public Escenario(){
    this.posicion=new PVector(width/17,height/20*2.5);
    this.ancho=width/17*15;
    this.alto= height/20*15;
    this.color1=color(#0B1F64);
    this.color2=color(#A69ED3);
    this.anchoCelda=this.ancho/15;
    this.altoCelda=this.alto/15;
  }
  
  public void display(){
    fill(color1);
    stroke(color2);
    rectMode(CORNER);  
    rect(this.posicion.x,this.posicion.y,this.ancho,this.alto);
    for(int i=1;i<=14;i++){
      line(this.posicion.x,this.posicion.y+this.altoCelda*i,this.posicion.x+this.ancho,this.posicion.y+this.altoCelda*i);
    }
    for(int j=1;j<=14;j++){
      line(this.posicion.x+this.anchoCelda*j,this.posicion.y,this.posicion.x+this.anchoCelda*j,this.posicion.y+this.alto);
    }
  }
  public float getAnchoCelda(){
    return this.anchoCelda;
  }
  public float getAltoCelda(){
    return this.altoCelda;
  }
}
