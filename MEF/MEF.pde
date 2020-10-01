// Estados Possiveis
final int PARADO = 0;
final int MARTELANDO = 1;
final int PULANDO = 2;
final int ABAIXANDO = 3;


// Imagens
PImage imgParado, imgMartelando, imgPulando,imgAbaixado;
// Estado Inicial
int estadoPersonagem = PARADO;

void settings(){
  size (600, 600);
}

// Configuracao Inicial
void setup(){
  imgParado = loadImage("data\\parado.png");
  imgMartelando = loadImage("data\\martelando.png");
  imgPulando = loadImage("data\\pulando.png");
  imgAbaixado = loadImage("data\\abaixado.png");

}

// Laco Principal
void draw(){
  iniciaMEF();
  println(estadoPersonagem);
  mostraPersonagem(estadoPersonagem);
  
  /*if(keyPressed == false){
    estadoPersonagem = PARADO;
  }*/
}

void iniciaMEF() {
  if (keyPressed == true){
    println(key);
    switch(keyCode){
      case ' ':
        estadoPersonagem = MARTELANDO;
        break;
      case 38:
        estadoPersonagem = PULANDO;
        break;
      case 40:
        estadoPersonagem = ABAIXANDO;
        break;
    }
  }else{
    estadoPersonagem = PARADO;
  }
}

/*void keyPressed() {
  if (key == CODED) {
    switch(keyCode){
      case ' ':
        estadoPersonagem = MARTELANDO;
        break;
      case UP:
        estadoPersonagem = PULANDO;
        break;
      case DOWN:
        estadoPersonagem = ABAIXANDO;
        break;
    }
  }else if(key == ' '){
    estadoPersonagem = MARTELANDO;
  }
}*/

// Representacao Grafica
void mostraPersonagem (int estado){
  background(255);
  switch(estado){
    case PARADO:
      image(imgParado, 150, 150);
      break;
    case MARTELANDO:
      image(imgMartelando, 150, 150);
      break;
    case PULANDO:
      image(imgPulando, 150, 150);
      break;
    case ABAIXANDO:
      image(imgAbaixado, 150, 150);
      break;
  }
}
