float tAtual = 0;
float vInicial = 105;
float aAtual = -9.8; 
float dAtual;


float intervalo = 1.0/60;

void setup() {
  size(600, 600); //tamanho da ui
}

void draw() {
  background(255);
  mostraMundo(); 
  dAtual = MRUV(vInicial, aAtual, tAtual); 
  println("Tempo: " + tAtual); 
  println("Deslocamento: " + dAtual);
  println();

  if(dAtual >=562){ 
    ellipse(dAtual, 300, 10, 10); 
  }else{ 
    ellipse(dAtual, 300, 10, 10); 
    tAtual = tAtual + intervalo; 
  }
  
}


float MRUV(float v, float a, float t){
  float d;
  d = v * t + a * t * t / 2.0;
  return(d);
}


void mostraMundo(){
  for(int i=0;i<12;i++){
    line(i*50,0,i*50,600); //linha vertical
    line(0,i*50,600,i*50); //linha horizontal
  }
}
