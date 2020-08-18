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
  println("Parametros:\n modulo = "+modulo+"\n area = "+lado+"\n unidade = "+unidade+"\n modSeis ="+modSeis+"\n modSete = "+modSete);
}

void draw(){  
  //Quadrado de fundo branco
  fill(#FFFFFF);
  rect(0, 0, lado, lado);
  
  //Cruz retangulo vertical
  fill(#FF0000);
  noStroke();
  rect(
  modSeis+modSete, 
  modSeis, 
  modSeis, 
  (modSete*2)+modSeis);
  
  //Cruz retangulo horizontal (inversão do vertical)
  fill(#FF0000);
  noStroke();
  rect(
  modSeis, 
  modSeis+modSete, 
  (modSete*2)+modSeis, 
  modSeis);
}
