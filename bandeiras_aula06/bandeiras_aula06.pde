/*Crie uma aplicação que apresenta, centralizada em uma janela de 800 px x 600px, uma bandeira do Japão cuja largura é igual ao valor da variável interna mouseX do
Processing (https://youtu.be/iYl-t2HzeM4)*/

void settings(){
  size(800, 600);
}

void setup() {
}

void draw(){
  mostraBandeira(mouseX);
}

void mostraBandeira(float largura){
  float modulo = largura / 3.0;
  float altura = 2.0 * modulo;
  float xCentro = 1.0 / 2 * 3 * modulo;
  float yCentro = modulo;
  float diametro = 3.0 / 5 * 2 * modulo;
  float bordaX = (width - largura)/2;
  float bordaY = (height - altura)/2;
  
  background(#434343);
  
  fill(#FFFFFF);
  noStroke();
  rect(bordaX, bordaY, largura, altura);
  
  fill(#FA1919);
  noStroke();
  ellipse(xCentro+bordaX, yCentro+bordaY, diametro, diametro);
  println(diametro);
}
