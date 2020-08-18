/* Demonstre o processo de criação de uma aplicação que apresenta uma bandeira da Suíça, seguindo suas proporções em lei, encaixada no canto superior esquerdo de uma janela de 
800 px x 600 px, a partir da definição de sua largura*/

float modulo = 100.0;
float lado = 5.0*modulo;
float unidade = lado/32.0;
float modSeis = unidade * 6.0;
float modSete = unidade * 7.0;

void settings(){
  size(800,600);
}

void setup(){
  background(#000000);
  println("Parametros:\n modulo = "+modulo+"\n lado = "+lado+"\n unidade = "+unidade+"\n modSeis = "+modSeis+"\n modSete = "+modSete);
}

void draw(){  
  //Fundo de forma quadrangular como observado na imagem de referencia
  fill(#FF0000);
  rect(0, 0, lado, lado);
  
  //Cruz vertical
  fill(#FFFFFF);
  noStroke();
  rect(
  modSeis+modSete, 
  modSeis, 
  modSeis, 
  (modSete*2)+modSeis);
  
  //Cruz horizontal (inversão do vertical)
  fill(#FFFFFF);
  noStroke();
  rect(
  modSeis, 
  modSeis+modSete, 
  (modSete*2)+modSeis, 
  modSeis);
}
