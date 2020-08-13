int tAtual = 0;
int vAtual = 10;
int dAtual;

void setup() {
  frameRate(1);
  size(600, 600);
  background(255);
}

void draw() {
  mostraMundo();
  dAtual = MRU(vAtual, tAtual);
  println(tAtual, dAtual);
  ellipse(dAtual, 300, 10, 10);
  tAtual++;
}

int MRU(int v, int t) {
  int d;
  d = v * t;
  return(d);
}

void mostraMundo(){
  for(int i=0;i<12;i++){
    line(i*50,0,i*50,600); //linha vertical
    line(0,i*50,600,i*50); //linha horizontal
  }
}
