int bordaX = 50; //borda no eixo X para o bastao
int bastaoY = 2; //posicao do bastao no eixo Y
int velBastao = 5; //velocidade do bastao 

int bolaX = 300; //posicao da bola no eixo x
int bolaY = 300; //posicao da bola no eixo Y
int velBola = 2;
int dirBola = 1;

void settings(){
  size(800, 600);
}

void setup() {
}
void draw() {
  background(0);
  
  rect(width - bordaX, bastaoY, 20, 100);
  movimentaBastao();
  
  ellipse(bolaX, bolaY, 20, 20);
  bolaX = bolaX + velBola * dirBola;
  
  if (bolaX >= width - (bordaX + 10) || bolaX <= 10){
    dirBola = -dirBola;
  }
  
  println(bolaX);
}

void movimentaBastao(){
  if (keyPressed == true){
    switch(keyCode){
      case DOWN:
        if(bastaoY  >= (height - 102)){
          bastaoY = height - 102;
        } else{
          bastaoY = bastaoY + velBastao;
        }
        break;
      case UP:
        if( bastaoY <= 2){
          bastaoY = 2;
        } else{
          bastaoY = bastaoY - velBastao;
        }
        break;
    }
  }
}
