int bolaX;
int bolaY;
int velBola = 3; 
int dirBolaX = 1;
int dirBolaY = 1;

void settings(){
  size(600, 300);
}

void setup() {
  bolaX = width/2; 
  bolaY = height/2;
}

void draw() {
  background(0); 
  
  ellipse(bolaX, bolaY, 20, 20);
  bolaX += velBola * dirBolaX;
  bolaY += velBola * dirBolaY;  //<>//
  mudaDirecao(bolaX,bolaY);  //<>//
}

void mudaDirecao(int bolaX, int bolaY){
  if (bolaY >= height - 10 || bolaY <= 10){
    dirBolaY = -dirBolaY;
  }
  if(bolaX >= width - 10 || bolaX <= 10){
    dirBolaX = -dirBolaX;
  }
}
