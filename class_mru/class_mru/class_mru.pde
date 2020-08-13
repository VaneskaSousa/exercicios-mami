int tAtual = 0;
int vAtual = 50;
int dAtual;

void settings() {

}

void setup() {
  frameRate(1);
}

void draw(){
  dAtual = calcMRU(vAtual, tAtual);
  println(tAtual, dAtual);
  tAtual++;
}

int calcMRU(int v, int t) {
  int d;
  d = v * t;
  return(d);
}
