
void setup(){
  size(600,600);
  background(255);
  mostraMundo();
}

void mostraMundo(){
  for(int i=0;i<12;i++){
    line(i*50,0,i*50,600); //linha vertical
    line(0,i*50,600,i*50); //linha horizontal
  }
}
