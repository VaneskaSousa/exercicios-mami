float tAtual = 0;
float vAtual = 10;
float dAtual = 10;
float intervalo = 1.0/60;

void setup() {
  size(600, 600);
}

void draw() {
  background(255);
  mostraMundo();
  dAtual = MRU(vAtual, tAtual);
  println("Tempo: " + tAtual);
  println("Deslocamento: " + dAtual);
  println();
  ellipse(dAtual, 300, 10, 10);
  tAtual = tAtual + intervalo;
}

float MRU(float v, float t) {
  float d;
  d = v * t;
  return(d);
}

void mostraMundo(){
  for(int i=0;i<12;i++){
    line(i*50,0,i*50,600); //linha vertical
    line(0,i*50,600,i*50); //linha horizontal
  }
}
