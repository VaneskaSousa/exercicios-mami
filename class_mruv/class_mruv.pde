// Declaração das variaveis, tal qual o modelo natural e determinando o valor de cada uma
float tAtual = 0;
float vInicial = 20;
float aAtual = 1;
float dAtual;

// variavel usada para criar a escala pois iremos usar 60fps
float intervalo = 1.0/60;

void setup() {
  size(600, 600); //tamanho da ui
}

void draw() {
  background(255);
  mostraMundo(); //adiciona linhas no fundo
  dAtual = MRUV(vInicial, aAtual, tAtual); //obtendo o resultado do calculo do mruv, de acordo com a posição neste quadro/segundo
  println("Tempo: " + tAtual); 
  println("Deslocamento: " + dAtual);
  println();
  
  if(dAtual >= 600){
    ellipse(dAtual, 300, 10, 10); //desenho da elipse partindo da posição atual conforme o resultado 
  }else{
    ellipse(dAtual, 300, 10, 10); //desenho da elipse partindo da posição atual conforme o resultado 
    tAtual = tAtual + intervalo; //mantendo a escala
  }
}

//Calculo do deslocamento atual com base na equação de MRUV
float MRUV(float v, float a, float t){
  float d;
  d = v * t + a * t * t / 2.0;
  return(d);
}

void posicaoInicial(){
  tAtual = 0;
  vInicial = 0;
  aAtual = 1;
}

// Criar linhas verticais e horizontais no fundo para melhorar nossa observação:
void mostraMundo(){
  for(int i=0;i<12;i++){
    line(i*50,0,i*50,600); //linha vertical
    line(0,i*50,600,i*50); //linha horizontal
  }
}
